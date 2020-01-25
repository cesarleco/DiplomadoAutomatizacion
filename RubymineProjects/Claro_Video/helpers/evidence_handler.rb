
require 'fileutils'
require 'capybara'
require_relative '../helpers/utils'
require_relative '../helpers/data_users'
require_relative '../helpers/Info'

# Evidence Handler class. Saves evidences with specific names.
class Evidence
  extend Capybara::DSL

  @current_scenario = nil
  @feature_name = nil
  @scenario_name = nil
  @scenario_directory = nil
  @execution_date = nil
  @execution_time = nil
  @counter = 0

  class << self

    def init_paths
      @os_system = RUBY_PLATFORM.include?('mingw')? 'windows':'other'
      path_result = File.join(File.dirname(__FILE__), "../global/reports/#{Time.now.strftime('%F')}/#{ENV['ENVIRON'].to_s.downcase}/")
      FileUtils::mkdir_p path_result unless Dir.exist? path_result
    end

    def set(scenario)
      workspace ||= ENV['WORKSPACE_NAME'].nil? ? 'local' : ENV['WORKSPACE_NAME'].to_s.downcase
      browser ||= Utils.browser.to_s.downcase
      environ ||= Utils.environment.to_s.downcase
      country ||= ENV['COUNT'].to_s.downcase
      tag ||= Utils.tag.to_s.downcase
      Info.basic scenario
      Info.basic scenario.feature.name
      Info.basic scenario.name
      @current_scenario = scenario
      @feature_name = scenario.feature.name
      @scenario_name = scenario.name.split('(TC')[0]
      @execution_date = Time.now.strftime('%F')
      @execution_time ||= Time.now.strftime('%H_%M_%S')
      if @os_system == 'windows'
        @scenario_directory = "evidence/#{workspace}/#{browser}_#{environ}_#{country}_#{tag}/executed/#{@execution_date}/#{@execution_time}/#{@scenario_name}"
        @failures_directory = "evidence/#{workspace}/#{browser}_#{environ}_#{country}_#{tag}/failed/#{@execution_date}/#{@execution_time}/#{@scenario_name}"
      else
        @scenario_directory = "evidence/#{workspace}/#{browser}_#{environ}_#{country}_#{tag}/executed/#{@execution_date}/#{@execution_time}/#{@feature_name}/#{@scenario_name}"
        @failures_directory = "evidence/#{workspace}/#{browser}_#{environ}_#{country}_#{tag}/failed/#{@execution_date}/#{@execution_time}/#{@feature_name}/#{@scenario_name}"
      end
      @failures_root = "evidence/#{workspace}/#{browser}_#{environ}_#{country}_#{tag}/failed/#{@execution_date}"
      FileUtils::mkdir_p @failures_root unless Dir.exist? @failures_root
    end

    def reset_scenario
      Info.basic 'Reiniciando escenario.'
      @current_scenario = nil
      @execution_time = nil
    end

    def reset_counter
      Info.basic 'Reiniciando counter.'
      @counter = 0
    end

    def save(filename)
      raise 'No se ha establecido un escenario' if @current_scenario.nil?
      FileUtils::mkdir_p @scenario_directory unless Dir.exist? @scenario_directory
      if @os_system == 'windows'
        save_screenshot("#{@scenario_directory}/#{@counter.to_s.rjust(2,'0')}.png", full: true)
      else
        save_screenshot("#{@scenario_directory}/#{@counter.to_s.rjust(2,'0')}_#{filename.tr(' ', '_')}.png", full: true)
      end
      Info.basic 'Se guardó correctamente la evidencia'
      @counter += 1
    rescue
      Info.error 'Error al guardar la captura de pantalla.'
      raise
    end

    def save_error(scenario)
      mjs_error = scenario.name
      raise 'No se ha establecido un escenario' if @current_scenario.nil?
      FileUtils::mkdir_p @scenario_directory unless Dir.exist? @scenario_directory
      FileUtils::mkdir_p @failures_directory unless Dir.exist? @failures_directory
      if @os_system == 'windows'
        save_screenshot "#{@scenario_directory}/#{@counter.to_s.rjust(2,'0')}_fail.png"
        save_screenshot "#{@failures_directory}/#{@counter.to_s.rjust(2,'0')}_fail.png"
      else
        save_screenshot "#{@scenario_directory}/#{@counter.to_s.rjust(2,'0')}_fail_#{mjs_error.tr(' ', '_')}.png"
        save_screenshot "#{@failures_directory}/#{@counter.to_s.rjust(2,'0')}_fail_#{mjs_error.tr(' ', '_')}.png"
      end
      Info.basic 'Se guardó correctamente la evidencia'
    rescue
      Info.error 'Error al guardar la captura de pantalla.'
      raise
    end

    def get_error_info(scenario)
      begin
        scenario.name
      rescue
        puts 'No exception found'
        scenario.name
      end
    end

  end
end