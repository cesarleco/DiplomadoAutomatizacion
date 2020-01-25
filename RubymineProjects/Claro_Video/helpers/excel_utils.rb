require 'rubygems'
require 'roo'
require 'write_xlsx'
require 'write_xlsx/formats'
require 'fileutils'

class ExcelUtils

  def initialize(path)
    @file = Roo::Spreadsheet.open(path)
  end

  def print_info_deeplink
    @sheet.each do |country,entity,url|
      Info.basic "Paìs: #{country} | Entidad: #{entity} | URL: #{url}"
    end
  end

  def get_sheet
    @sheet = @file.sheet(0)
  end

  def create_headers
    format = @@workbook_result.add_format(
                                              :bg_color => '#0b5494',
                                              :color    => '#ffffff'
                                          )
    format.set_bold
    format.set_align('center')
    @sheet_workbook.write(0,0,'Paìs',format)
    @sheet_workbook.write(0,1,'Entidad',format)
    @sheet_workbook.write(0,2,'URL',format)
    @sheet_workbook.write(0,3,'Status',format)
  end

  def create_workbook
    fecha = Time.now.strftime("%Y%m%d_%H%M").to_s
    @@workbook_result = WriteXLSX.new("./config/data/mx/excel/Resultados/Results_Deeplinks_#{fecha.to_s}.xlsx")
    @@workbook_result
  end

  def get_sheet_write
    @sheet_workbook = @@workbook_result.add_worksheet('Test_Results')
  end

  def write_report_results(values,index,status)

    if status.to_s.downcase.eql?"success"
      format = @@workbook_result.add_format(
          :bg_color => '#C6EFCE',
          :color    => '#006100'
      )

      format.set_bold
    else
      format = @@workbook_result.add_format(
          :bg_color => '#FFC7CE',
          :color    => '#9C0006'
      )
      format.set_bold
    end

    @sheet_workbook.write(index+1,0,values[0].to_s.upcase)
    @sheet_workbook.write(index+1,1,values[1].to_s.capitalize)
    @sheet_workbook.write(index+1,2,values[2].to_s)
    @sheet_workbook.write(index+1,3,status.to_s.capitalize,format)
  end

  def close_workbook
    @@workbook_result.close
  end

end