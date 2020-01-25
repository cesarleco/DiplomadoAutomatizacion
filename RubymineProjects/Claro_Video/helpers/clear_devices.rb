require 'capybara'
require_relative 'api_services/api_helper'
require_relative '../helpers/Info'
require_relative '../helpers/utils'


class ClearDevices

  class << self

    def reset_params
      @params_get_devices = {
        api_version: 'v5.4',
        authpn: 'webclient',
        authpt: 'tfg1h3j4k6fd7',
        format: 'json',
        region: Utils.country_name,
        device_id: 'web',
        device_category: 'web',
        device_type: 'web',
        device_model: 'web',
        device_manufacturer: 'generic',
        HKS: return_cookie_hks

      }

      @params_delete_devices = {
        api_version: 'v5.8',
        authpn: 'webclient',
        authpt: 'tfg1h3j4k6fd7',
        format: 'json',
        region: Utils.country_name,
        HKS: return_cookie_hks
      }
    end

    def return_cookie_hks
      browser = Capybara.current_session.driver.browser.manage
      @cookie = browser.cookie_named("PHPSESSID")[:value].to_s
    end

    def clear_devices
      Info.basic 'Clearing Devices from current account'
      devices = get_devices
      devices.each do |device|
        reset_params
        @params_delete_devices[:device_id] = device['device_id']
        @params_delete_devices[:device_model] = device['device_model']
        @params_delete_devices[:device_category]= device['device_category']
        @params_delete_devices[:device_type] = device['device_type']
        @params_delete_devices[:device_manufacturer] = device['device_manufacturer']
        clear_device(device['device_name'])
      end
    end

    def get_devices
      reset_params
      @nodo_devices = ApiHelper.request(type: :get_devices, params: @params_get_devices)
      @nodo_devices['response']['devices']
    end

    def clear_device(device_name)
      status = ApiHelper.request(type: :delete_devices, params: @params_delete_devices)
      Info.color_print("Device #{device_name} cleared", :green) if status['status'].to_s == '200'
      Info.warning("Device #{device_name} not cleared") unless status['status'].to_s == '200'
    end




  end
end