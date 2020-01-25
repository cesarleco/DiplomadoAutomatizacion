require 'net/http'
require 'json'
require_relative '../../helpers/Info'
require_relative '../../helpers/utils'
require_relative   '../../helpers/api_services/api_builder'
require_relative '../../global/config/api_settings/api_settings_components'

# ApiHelper class to read data from APIs
class ApiHelper

  @params_middleware = Api::Settings_Api::PARAMS_MIDDLEWARE
  @services_url= Api::Services::MIDDLEWARE_URL

  ApiBuilder.setup

  ApiBuilder.register(name: :request_level_middleware).cm_access_token.authpn.authpt.device_type.device_model.device_manufacturer.device_category.device_id.
      tenant_code.format.list_id.pagination.region.medias_only.category.start.current.size.url(@params_middleware[:api][:prodweb_endpoint]).path(@services_url[:level]).build

  @save_log = true

  class << self
    # Validates the parameters for a given method.
    # @param [Hash] request The type of method to validate.
    # @param [Hash] params The parameters to validate.
    # @raise [Exception] when parameters are not included for the given type.
    def validate_params_data(request:, params:)
      raise "La llamada #{request[:name]} no recibe parámetros." if
        request[:parameters].nil? && params.size.positive?
      return if request[:parameters].nil? && params.size.zero?
      params.each_key do |param|
        raise "Parámetro #{param} inválido." unless
          request[:parameters].include? param
      end
    end

    # May switch the evidence generator on on off.
    # @param [TrueClass|FalseClass] status The evidence status
    #                                      true for generating evidence.
    #                                      false to stop generating evidence.
    def generate_evidence(status)
      raise 'Solo se permite estatus true o false.' unless
        [true, false].include? status
      @save_log = status
    end

    # Performs a request for an api method.
    # @param [Symbol] type The request type for the execution.
    # @param [Array] params An array containing the parameters.
    # @raise [Exception] when type is not supported.
    # @raise [Exception] when no data is provided.
    # @raise [Exception] when the parameters are not sent in key: value format.
    # @raise [Exception] when any of "params" is not included in nav definition.
    def request(type:, path: nil, params:)
      validate_request_data type, params
      current_request = ApiBuilder.retrieve type
      validate_params_data request: current_request, params: params
      #Info.basic "Ejecutando peticion #{type} con parametros #{params} \n"
      current_request[:uri][:path] = path if path
      uri = build_uri current_request, params
      Info.basic "Ejecutando peticion:  \n#{uri}\n"
      response = Net::HTTP.get_response uri
      save_response(request: current_request, content: response.body.force_encoding('UTF-8')) if @save_log
      response
    end

    # Performs a request for an api method.
    # @param [Symbol] type The request type for the execution.
    # @param [Array] params An array containing the parameters.
    # @raise [Exception] when type is not supported.
    # @raise [Exception] when no data is provided.
    # @raise [Exception] when the parameters are not sent in key: value format.
    # @raise [Exception] when any of "params" is not included in nav definition.
    def request_web(type:, path: nil, params:)
      validate_request_data type, params
      current_request = ApiBuilder.retrieve type
      validate_params_data request: current_request, params: params
      #Info.basic "Ejecutando peticion #{type} con parametros #{params}"
      current_request[:uri][:path] = path if path
      uri = build_uri current_request, params
      Info.basic "Ejecutando peticion:\n#{uri}"
      response = Net::HTTP.get_response uri
      #save_response(request: current_request, content: response.body.force_encoding('UTF-8')) if @save_log
      raise "Error en la respuesta de #{type}" unless
          response.is_a? Net::HTTPSuccess
      JSON.parse response.body
    end

    # Forms the URI for the request
    # @param [Hash] request The request type for the execution.
    # @param [Hash] params A hash containing the parameters for the request.
    def build_uri(request, params)
      #Info.basic "Formando URI #{request[:uri][:base]}#{request[:uri][:path]}."
      uri = URI("#{request[:uri][:base]}#{request[:uri][:path]}")
      #Info.basic "Codificado #{URI.encode_www_form params}"
      uri.query = URI.encode_www_form params
      if request[:uri][:path] == '/services/content/list'
        URI("#{uri.to_s}&region=#{Utils.country_name}")
      else
        uri
      end
    end

    # Validates the request sent data is correct according to the parameters.
    # @param [Symbol] type The request type for the execution.
    # @param [Array] params An array containing the parameters.
    def validate_request_data(type, params)
      raise 'El tipo se debe enviar como Símbolo' unless type.is_a? Symbol
      raise "Llamada tipo #{type} no soportado." unless ApiBuilder.include? type
      raise 'Formato de parametros incorrecto' unless params.is_a? Hash
    end

    # Creates a file for the response type
    # @param [Hash] request The request type for the file type.
    # @param [String] content The content to be saved.
    # @raise [Exception] when type is not supported.
    # @raise [Exception] when content is is not provided.
    def save_response(request:, content:)
      raise 'Se debe enviar contenido a guardar' if content.nil?
      file_date = Time.now.strftime('%Y%m%d_%H%M%S')
      file_name = "#{request[:filename]}_#{file_date}.json"
      full_path = "../global/json/#{file_name}"
      File.open(full_path, 'a') { |file| file.write(content) }
    end
  end
end
