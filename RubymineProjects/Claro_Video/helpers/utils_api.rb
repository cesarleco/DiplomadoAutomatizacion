require 'json'
require_relative '../helpers/api_services/request_contents'


class UtilsApi

  class << self

    def find_service(service, request, device)
      case service.to_s.downcase
      when "level"
        RequestContents.request_level_middleware(request, device)
      end
    end

    def validate_empty(response)
      if response.body.empty?
        raise "La respuesta del servicio esta vacia"
      else
        Info.basic "La respuesta no esta vacia, contiene datos"
      end
    end

    def validate_message(response, message)
      if response.message.to_s.downcase.eql? message.downcase
        Info.basic "El mensaje del servicio es el esperado: #{message}"
      else
        raise "No es el mensaje esperado, el mensaje actual es: #{response.message}"
      end
    end

    def validate_code(response, code)
      if response.code.to_s.eql? code.to_s
        Info.basic "El codigo es el esperado: #{code}"
      end
    end

    def build_response(response)
      Info.basic "El codigo de respuesta es: #{response.code} \n"
      Info.basic "La respuesta del servicio es: \n #{response.body} \n"
      Info.basic "El mensaje del servicio es:  #{response.message} \n"
    end

    def find_element(response, element)
      data = JSON.parse response.body
      if response.code.to_s.eql? "200"
        data['response']['components'][0]['items'].each_with_index do |value, index|
          value.each do |item|
            item.each do |item_value|
              if item_value.to_s.eql? element.to_s
                Info.basic "Se encontro #{element} en la respuesta"
                break
              end
            end
          end
        end
      else
        data['error'].each_value do |value|
          if value.to_s.eql? element.to_s
            Info.basic "Se encontro #{element} en la respuesta"
            break
          else
            raise "No se encontro #{element} en la respuesta"
          end
        end
      end
    end

  end
end