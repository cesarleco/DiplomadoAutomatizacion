require 'Capybara'
class Utils

  # Variables de instancia.
  @environment = ENV['ENVIRON'].to_sym
  @browser = ENV['BROW'].downcase.to_sym
  @country = ENV['COUNT'].downcase.to_sym
  @tag = ENV['TAG'].downcase.to_sym
  @speed = ENV['SPEED'].downcase.to_sym

  @countries = {
      mx: 'mexico',
      co: 'colombia',
      ar: 'argentina',
      br: 'brasil',
      cl: 'chile',
      cr: 'costarica',
      do: 'dominicana',
      ec: 'ecuador',
      sv: 'elsalvador',
      gt: 'guatemala',
      hn: 'honduras',
      ni: 'nicaragua',
      pa: 'panama',
      py: 'paraguay',
      pe: 'peru',
      uy: 'uruguay'
  }

  @environments = {
      TEST: 'https://wwwtest2.clarovideo.com',
      DEMO: 'https://demoweb.clarovideo.net',
      PROD: 'https://www.clarovideo.com/mexico/homeuser'
  }

  @speed_time = {
      fast: 3,
      medium: 7,
      slow: 15
  }

  class << self

    # Adición de atributos de lectura a las variables de instancia para
    # su inicialización y uso dentro de la clase.
    attr_reader :environment, :browser, :country, :tag

    # Método para cambiar el país de ejecucion actual
    def set_country_to(country)
      @country = ENV['COUNT'].downcase.to_sym if country == :reset
      return if country == :reset
      raise "Country option #{country} not valid" unless @countries.include? country.downcase
      @country = country.downcase
    end

    # Método para convertir del nombre representativo del país al nombre del país.
    def country_name
      raise "El país #{@country} es inválido para usarse en jmeter." unless @countries.include? @country
      @countries[@country]
    end

    def environment_url
      raise "El ambiente #{@environment} no es válido" unless @environments.include? @environment
      @environments[@environment]
    end

    def get_time
      raise "El tiempo #{@speed} no es válido" unless @speed_time.include? @speed
      sleep(@speed_time[@speed])
    end

    def switch_windows
      window = page.driver.browser.window_handles
      if window.size > 1
        page.driver.browser.switch_to.window(window.last)
      else
        page.driver.browser.switch_to.window(window.first)
      end
    end
    def highlight(element,border_color="green",bg=0)
        script = <<-JS
        arguments[0].setAttribute(arguments[1], arguments[2]);
        JS

      if bg.eql?0
        background ="transparent"
      else
        background = "lightblue"
      end

      Capybara.current_session.driver.browser.execute_script(script,element.native, "style", "border: 2px solid #{border_color}; border-style: solid; background-color: #{background};")
    end
  end
end
