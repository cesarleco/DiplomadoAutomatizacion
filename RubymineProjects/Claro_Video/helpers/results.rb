require 'csv'
require 'fileutils'
require_relative '../helpers/utils'

class ReportResults

  @csv_report_file
  @total_scenario_counter = 0

  class << self

    def init_paths
      workspace ||= ENV['WORKSPACE_NAME'].nil? ? 'local' : ENV['WORKSPACE_NAME'].to_s.downcase
      puts "El workspace es #{workspace}"
      browser ||= Utils.browser.to_s.downcase
      environ ||= Utils.environment.to_s.downcase
      country ||= ENV['COUNT'].to_s.downcase
      tag ||= Utils.tag.to_s.downcase
      @path_result ||= File.join(File.dirname(__FILE__), "../global/csv_reports/#{workspace}/#{browser}_#{environ}_#{country}_#{tag}_csv/#{Time.now.strftime('%F')}/#{Time.now.strftime("%H_%M_%S")}/")
    end

    # This method is executed at execution start
    # creates a csv file with status for every scenario
    def initialize_csv
      FileUtils::mkdir_p @path_result unless Dir.exist? @path_result
      @csv_report_file = "#{Utils.environment}_#{Utils.browser}_#{Utils.country}_#{Utils.tag}"
      CSV.open("#{@path_result}/#{@csv_report_file}.csv","wb") do |file|
        file << ['FEATURE','SCENARIO','STATUS']
      end
    end

    # Write to csv feature name, scenario name and status
    # [@param] scenario object
    def write_to_csv(scenario)
      status = scenario.passed? ? 'PASS':'FAIL'
      CSV.open("#{@path_result}/#{@csv_report_file}.csv","a") do |file|
        file << [scenario.feature.name, scenario.name, status]
      end
    end

    # This counter give us information about how many scenarios have been executed
    def add_to_counter
      @total_scenario_counter = @total_scenario_counter+1
    end

    # This method creates a new csv to save a specific csv if required
    # The file is save in the same path of execution csv (@path_result)
    # This method must to be called before to add information to file
    # [@param] file_name, the file name to be created
    # [@param] headers, any number of columns to be named
    def create_my_csv(file_name, *headers)
      FileUtils::mkdir_p @path_result unless Dir.exist? @path_result
      Info.warning 'File already exists' if File.exist? "#{@path_result}/#{file_name.to_s}.csv"
      unless File.exist? "#{@path_result}/#{file_name.to_s}.csv"
        Info.color_print("Creating csv file with name #{file_name}", :light_green)
        CSV.open("#{@path_result}/#{file_name.to_s}.csv","wb") do |file|
          file << headers
        end
      end
    end

    # This method write values to csv created with create_my_csv
    # [@param] values, receive any number of values
    # every value is going to be a column
    def write_to_my_csv(file_name, *values)
      CSV.open("#{@path_result}/#{file_name.to_s}.csv","a") do |file|
        file << values
      end
    end

  end
end

#$path_testcase_web = File.join(File.dirname(__FILE__), '../global/config/test_case.csv')
#$path_testcase_xdk2 = File.join(File.dirname(__FILE__), '../global/reports/test_case_xdk2.csv')

#$file_result = "#{Time.now.strftime('%H%M')}_result_#{$env.to_s.downcase}.csv"
#$file_testcase_result = "#{Time.now.strftime('%H%M')}_tc_result_#{$env.to_s.downcase}.csv"

#Método para obtener el path del archivo con el 'template de test case', segun el dispositivo
# para xdk no cambia el valor, ya que los testcase son los mismos para las 5 tv
# para ios y android, etc en el when case los path de los testcase que apliquen segun el dispositivo
# para ios y android, etc cambiar '$env' por '$device'.
#def get_path_testcase
#  return $path_testcase_web
#end
#
##Método para obtener el template de todos los testcase que aplican en la ejecución
##   headers:  => [:usuario, :id, :name, :description, :status_execution, :type_of_case, :country, :comments]
#def get_test_case
#  csv_arr = CSV.read( get_path_testcase,  {:headers => true, :header_converters => :symbol} )
#  keys = csv_arr.headers.to_a
#  # read attribute example => csv[index][:column1]
#  return csv_arr.to_a.map {|row| Hash[ keys.zip(row) ] }
#end
#
##Método para obtener los 'test case' ejecutados con su estatus
#def get_test_case_result
#  csv_arr = CSV.read( "#{$path_result}#{$file_result}",  {:headers => false} )
#  #keys = csv_arr.headers.to_a
#  # read attribute example => csv[index][:column1]
#  #return csv_arr.to_a.map {|row| Hash[ keys.zip(row) ] }
#  return csv_arr
#end
#
##Método para enviar 'id_testcase, status, mensaje de error' a un archivo csv
## Este Método se debe ejecutar en el 'hooks scenario => after', para obtener los datos y envierlos al csv
#def set_testcase_result(scenario)
#  tests = get_testcase_for_scenario(scenario.name).split(',')
#  # recupera el nombre del scenario para cada testcase
#  scenario_name = get_scenario_name(scenario.name)
#  status = scenario.failed? ? 'Fallido' : 'Exitoso'
#  mjs_error = scenario.exception.to_s
#  mjs_error = mjs_error.to_s.tr("\n",' ')
#  mjs_error = mjs_error.to_s.tr("\t",' ')
#  csv_result = Array.new
#  FileUtils::mkdir_p $path_result unless Dir.exist? $path_result
#  CSV.open("#{$path_result}#{$file_result}", "a+") do |csv|
#    for i in 0..(tests.size.to_i - 1)
#      csv_result.push("#{tests[i].to_s.strip}")
#      csv_result.push("#{status}")
#      csv_result.push("#{mjs_error}")
#      csv_result.push("#{scenario_name}")
#      csv << csv_result
#      csv_result.clear
#    end
#  end
#end
#
##Método para obtener los Test Case ejecutados por cada scenario
## Extrae del nombre del scenario los testcase asociados
#def get_testcase_for_scenario(scenario_name)
#  # separamos el nombre del scenario donde encuentre '(TC'
#  a = scenario_name.to_s.split('(TC')
#  # recuperamos la posicion 1 del split al nombre de scenaro para obtener la lista de testcase ejecutados en el scenario
#  a = a[1].to_s.tr(')', '')
#  # agregamos 'TC' al primer elemento ya que se perdio durante el split, y retornamos el resultado. Ej.  => "TC-57290, TC-57291, TC-57387, TC-57388"
#  return a.to_s.insert(0, "TC")
#end
#
##Método para obtener el nombre del escenario
#def get_scenario_name(scenario_name)
#  # separamos el nombre del scenario donde encuentre '(TC'
#  a = scenario_name.to_s.split('(TC')
#  # recuperamos la posicion 1 del split al nombre de scenaro para obtener la lista de testcase ejecutados en el scenario
#  a = a[0].to_s.tr(')', '')
#  return a.to_s.strip
#end
#
## csv format ouput:
##   Usuario,Id,Name,Description,Status_Execution,Type_of_Case,Country,Comments,Error_Message
##   headers:  => [:usuario, :id, :name, :description, :status_execution, :type_of_case, :country, :comments]
#def create_csv_results
#  testscase = get_test_case
#  results = get_test_case_result
#  FileUtils::mkdir_p $path_result unless Dir.exist? $path_result
#  #CSV.open("#{$path_result}#{$file_testcase_result}", "a+", {:col_sep => "\t"}) do |csv|
#  CSV.open("#{$path_result}#{$file_testcase_result}", "a+") do |csv|
#    #Crea los headers del csv
#    #csv << [ testscase[0][:usuario].to_s, testscase[0][:id].to_s, testscase[0][:name].to_s, testscase[0][:description].to_s,
#    #          testscase[0][:status_execution].to_s, testscase[0][:type_of_case].to_s, testscase[0][:country].to_s, testscase[0][:comments].to_s, "message_error", "scenario_name"
#    #       ]
#    for i in 0..(results.size - 1)
#      for j in 0..(testscase.size - 1)
#        if results[i][0] == testscase[j][:id]
#          #Llena los datos del csv, solo de los casos que fueron ejectuados
#          csv << [ testscase[j][:usuario].to_s, testscase[j][:id].to_s, testscase[j][:name].to_s, testscase[j][:description].to_s,
#                   results[i][1].to_s, testscase[j][:type_of_case].to_s, testscase[j][:country].to_s, testscase[j][:comments].to_s,
#                   results[i][2].to_s, results[i][3].to_s
#                 ]
#        end
#      end
#    end
#  end
#  puts "Se creo correctamente el archivo csv de resultados: #{$path_result}#{$file_testcase_result}"
#end
#
#
## CSV, read and write options
## @CSV.open("#{$path_result}#{$file_result}", "#{WRITE_OPTIONS}") do |csv|
## end
## #{WRITE_OPTIONS}:
##   "r" Read-only, starts at beginning of file (default mode).
##   "r+" Read-write, starts at beginning of file.
##   "w" Write-only, truncates existing file to zero length or creates a new file for writing.
##   "w+" Read-write, truncates existing file to zero length or creates a new file for reading and writing.
##   "a" Write-only, starts at end of file if file exists, otherwise creates a new file for writing.
##   "a+" Read-write, starts at end of file if file exists, otherwise creates a new file for reading and writing.
#
#