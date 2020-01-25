require_relative '../../helpers/api_services/api_helper'
require_relative '../../helpers/api_services/api_builder'
require_relative '../../helpers/utils'
require_relative '../../helpers/Info'
require_relative '../../global/config/api_settings/api_settings_components'
require 'yaml'


class RequestContents
  include Api
  @params = Api::Settings_Api::PARAMS_REQUEST
  @params_middleware = Api::Settings_Api::PARAMS_MIDDLEWARE
  class << self

    # Request API /services/cms/level
    def request_level_api(node)
      @node = node
      params = {
          HKS: "(#{@hks})",
          api_version: @params[:ios][:api_version],
          authpn: @params[:ios][:authpn],
          authpt: @params[:ios][:authpt],
          device_category: @params[:ios][:device_category],
          device_manufacturer: @params[:ios][:device_manufacturer],
          device_model: @params[:ios][:device_model],
          device_type: @params[:ios][:device_type],
          format: @params[:ios][:format],
          device_name: @params[:ios][:device_name],
          region: Utils.country_name,
          node: @node,
          user_status: @user_status
      }
      ApiHelper.request(type: :level_ios, params: params)
    end

    def request_level_middleware(request,device="web")
      case request.to_s.downcase
      when "valid_request"
        params = params_devices(device)
      when "invalid_request"
        params = {
            cm_access_token: @params_middleware[:api][:cm_access_token],
            category: @params_middleware[:api][:category],
            size: @params_middleware[:api][:size],
            start: @params_middleware[:api][:start],
        }
      when "invalid_token"
        params = {
            category: @params_middleware[:api][:category],
            size: @params_middleware[:api][:size],
            start: @params_middleware[:api][:start],
        }.merge(default_params_middleware)
      end
      ApiHelper.request(type: :request_level_middleware, params: params)
    end

    # Default params for request
    def default_params_middleware
      {
          authpn: @params_middleware[:api][:authpn],
          authpt: @params_middleware[:api][:authpt],
          tenant_code: @params_middleware[:api][:tenant_code],
          region: @params_middleware[:api][:region],
          format: @params_middleware[:api][:format],
          category: @params_middleware[:api][:category],
          size: @params_middleware[:api][:size],
          start: @params_middleware[:api][:start]
      }
    end

    def params_devices(device)
      @yalm ||= YAML.safe_load(File.read("./config/data/#{Utils.country}/api_data/#{device.to_s.downcase}.yml"))
      case device.to_s.downcase
      when "web"
        params_web
      when "android"
        params_android
      when "ios"
        params_ios
      when "tv"
        params_tv
      when "windows"
        params_windows
      end
    end

    def params_web
      {
          cm_access_token: @params_middleware[:api][:cm_access_token],
          device_category: @yalm['device_category'],
          device_model: @yalm['device_model'],
          device_manufacturer: @yalm['device_manufacturer'],
          device_type: @yalm['device_type'],
          device_id: @yalm['device_id']
      }.merge(default_params_middleware)
    end

    def params_android
      {
          cm_access_token: @params_middleware[:api][:cm_access_token],
          device_category: @yalm['device_category'],
          device_model: @yalm['device_model'],
          device_manufacturer: @yalm['device_manufacturer'],
          device_type: @yalm['device_type'],
          device_id: @yalm['device_id']
      }.merge(default_params_middleware)
    end

    def params_ios
      {
          cm_access_token: @params_middleware[:api][:cm_access_token],
          device_category: @yalm['device_category'],
          device_model: @yalm['device_model'],
          device_manufacturer: @yalm['device_manufacturer'],
          device_type: @yalm['device_type'],
          device_id: @yalm['device_id']
      }.merge(default_params_middleware)
    end

    def params_tv
      {
          cm_access_token: @params_middleware[:api][:cm_access_token],
          device_category: @yalm['device_category'],
          device_model: @yalm['device_model'],
          device_manufacturer: @yalm['device_manufacturer'],
          device_type: @yalm['device_type'],
          device_id: @yalm['device_id']
      }.merge(default_params_middleware)
    end

    def params_windows
      {
          cm_access_token: @params_middleware[:api][:cm_access_token],
          device_category: @yalm['device_category'],
          device_model: @yalm['device_model'],
          device_manufacturer: @yalm['device_manufacturer'],
          device_type: @yalm['device_type'],
          device_id: @yalm['device_id']
      }.merge(default_params_middleware)
    end

  end

end












