require 'fileutils'
require_relative '../helpers/utils'

class JmeterHelper

  @data_jmeter = YAML.load(File.read("../global/config/data/#{Utils.country}/data_jmeter.yml"))

  @path_jmeter = File.join(File.dirname(__FILE__), '../global/config/jmeter/')
  @file_jmeter = "ClearUsersArgs.jmx"

  @search_type = {
    email: 'EMAIL',
    pin: 'EMAIL',
    fijo: 'ID_USUARIO_ACCOUNT',
    movil: 'ID_USUARIO_ACCOUNT_HUB',
    outlook: 'EMAIL'
  }

  @search_value = {
    email: @data_jmeter["email_#{Utils.browser}"],
    pin: @data_jmeter['pin_user'],
    movil: @data_jmeter['numero_movil'],
    fijo: @data_jmeter['numero_fijo'],
    outlook: @data_jmeter['outlook']
  }

  class << self
    def clear_data(type)
      puts "Borrado: #{type}"
      puts @search_type[type]
      puts @search_value[type]
      jmeter_file = "#{@path_jmeter}#{@file_jmeter}"
      jmeter_args = "-Jsearch_type=#{@search_type[type]} -Jsearch_value=#{@search_value[type]} -Jregion_id=#{@data_jmeter['region_id']} -Jregion=#{Utils.country_name}"
      puts("jmeter -n -t #{jmeter_file} #{jmeter_args} > jmeter.log")
      system("jmeter -n -t #{jmeter_file} #{jmeter_args} > jmeter.log")
    end
  end

end