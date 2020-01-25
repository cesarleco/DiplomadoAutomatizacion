require 'fileutils'
require 'yaml'
require_relative 'Info'
require_relative '../helpers/utils'

class DataLabels

  @data = YAML.load(File.read("../global/config/data/#{Utils.country.to_s.downcase}/data_labels.yml"))

  @menu_labels = {
    Ingresar: @data['menu_ingresar'],
    Inicio: @data['menu_inicio'],
    Básico: @data['menu_basico'],
    Catálogo: @data['menu_catalogo'],
    Pago_por_Evento: @data['menu_ppe'],
    Niños: @data['menu_ninios'],
    Claro_sports: @data['menu_claro_tv'], # Utilizada en el ambiente de tienda.
    TV: @data['menu_tv'], # Agregado para el ambiente de demo.
    Registrate: @data['menu_registro'],
    Salir: @data['menu_salir'],
    Infantil_y_Familia: @data['menu_infantil_y_familia'],
    Documentales: @data['menu_documentales'],
    Historia: @data['menu_historia']
  }

  class << self

    attr_reader :country, :data, :menu_labels

    # Método para inicializar la clase, carga todos los data_labels en la clase ya
    # que es estática. Una sola carga en cada ejecución para optimizar la carga de
    # información.
    def load_data
      @country = Utils.country.to_s.downcase
      yml_path = "../global/config/data/#{@country}/data_labels.yml"
      full_path = File.expand_path(yml_path, File.dirname(__FILE__))
      Info.basic "Cargando información desde #{full_path}."
      @data = YAML.safe_load(File.open(full_path))
      Info.basic 'Información cargada.'
    end

    # Método para regresar los elementos del menú superior.
    def menu_superior
      load_data if @data.nil?
      {
        :Inicio => @data['menu_inicio'],
        :Basico => @data['menu_basico'],
        :Catalogo => @data['menu_catalogo'],
        :'Pago por Evento' => @data['menu_ppe'],
        :Niños => @data['menu_ninios'],
        :TV => @data['menu_tv'], # Agregado para el ambiente de demo.
        :Salir => @data['menu_salir'],
        :Películas => @data['menu_peliculas'],
        :'Infantil y Familia' => @data['menu_infantil_y_familia'],
        :Documentales => @data['menu_documentales'],
        :Historia => @data['menu_historia'],
        :'Play and Go' => @data['menu_fox'],
        peliculas: @data['sub_menu_peliculas'],
        series: @data['sub_menu_series'],
        musica: @data['sub_menu_musica'],
        documentales: @data['sub_menu_documentales'],
        deportes: @data['sub_menu_deportes'],
        cultural: @data['sub_menu_cultural'],
        latinoamerica: @data['sub_menu_latinoamerica'],
        recomendacion: @data['lbl_recomendacion_home']
      }
    end

    # Método para regresar las etiquetas de la sección de usuarios en la parte superior.
    def botones_anonimo_registro
      load_data if @data.nil?
      {
        :Ingresar => @data['menu_ingresar'],
        :Registrate => @data['menu_registro']
      }
    end

    def telmex_number
      load_data if @data.nil?
      @data['val_payment_tel_numero_fijo']
    end

    #def success_message(type)
    #  load_data if @data.nil?
    #  @data[@success_message[type]]
    #end

    def subscription(type)
      load_data if @data.nil?
      case type
      when :Mensual
        @data['plan_suscribete_mensual']
      when :Semanal
        @data['plan_suscribete_semanal_25']
      when :Fox
        @data['plan_contrata_fox_premium']
      when :HBO
        @data['plan_contrata_hbo']
      when :Noggin
        @data['plan_contrata_noggin']
      when :Crackle
        @data['plan_contrata_crackle']
      else
        raise "Tipo de suscripción #{type} inválida."
      end
    end

    def payment(type)
      load_data if @data.nil?
      case type
      when :'Recibo Telmex o Telnor'
        @data['pago_telmex']
      when :Telcel
        @data['pago_telcel']
      when :'Tarjeta de crédito'
        @data['pago_tarjeta']
      when :'Código promocional'
        @data['pago_codigo_promocional']
      else
        raise "Tipo de pago #{type} inválido."
      end
    end

    def skip_payment_method
      load_data if @data.nil?
      @data['lbl_skip_step']
    end

    def credit_card_data
      load_data if @data.nil?
      case Utils.environment
      when :TEST
        {
          Nombre: @data['credit_card_name_test'],
          Numero_de_tarjeta: @data['credit_card_number_test'],
          Tipo_de_tarjeta: @data['credit_card_type_test'],
          Codigo_de_seguridad: @data['credit_card_cvv_test'],
          Fecha_de_expiracion_mes: @data['credit_card_expiration_month_test'],
          Fecha_de_expiracion_anio: @data['credit_card_expiration_year_test'],
          Fecha_de_nacimiento_dia: @data['credit_card_birth_day'],
          Fecha_de_nacimiento_mes: @data['credit_card_birth_month'],
          Fecha_de_nacimiento_anio: @data['credit_card_birth_year'],
          Direccion: @data['credit_card_address'],
          Ciudad: @data['credit_card_city'],
          Estado: @data['credit_card_state'],
          Codigo_postal: @data['credit_card_zip_code'],
          Telefono: @data['credit_card_phone'],
          Codigo_de_seguridad_inco: @data['credit_card_cvv_wrong_test']
        }
      when :PROD, :DEMO
        {
          Nombre: @data['credit_card_name_prod'],
          Numero_de_tarjeta: @data['credit_card_number_prod'],
          Tipo_de_tarjeta: @data['credit_card_type_prod'],
          Codigo_de_seguridad: @data['credit_card_cvv_prod'],
          Fecha_de_expiracion_mes: @data['credit_card_expiration_month_prod'],
          Fecha_de_expiracion_anio: @data['credit_card_expiration_year_prod'],
          Fecha_de_nacimiento_dia: @data['credit_card_birth_day'],
          Fecha_de_nacimiento_mes: @data['credit_card_birth_month'],
          Fecha_de_nacimiento_anio: @data['credit_card_birth_year'],
          Direccion: @data['credit_card_address'],
          Ciudad: @data['credit_card_city'],
          Estado: @data['credit_card_state'],
          Codigo_postal: @data['credit_card_zip_code'],
          Telefono: @data['credit_card_phone'],
          Codigo_de_seguridad_inco: @data['credit_card_cvv_wrong_prod']
        }
      else
        raise "Ambiente #{Utils.environment} inválido para los datos de tarjeta de crédito."
      end
    end

  end
end
