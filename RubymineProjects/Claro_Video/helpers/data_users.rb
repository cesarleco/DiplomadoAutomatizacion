require 'fileutils'
require 'yaml'
require_relative '../helpers/Info'
require_relative '../helpers/utils'
require 'csv'

# Clase para manejar las credenciales de los usuarios.
class DataUsers

  class << self

    # Método para inicializar la variable de credenciales.
    def startup
      yml_path = "../global/config/data/#{Utils.country}/data_users.yml"
      full_path = File.expand_path(yml_path, File.dirname(__FILE__))
      @data_user = YAML.safe_load(File.open(full_path))
      @credentials = {
        email: :none,
        password: :none,
        user_type: :none
      }
      @credentials_catalog = {
        :anonymous => {
          email: '', password: ''
        },
        :registered => {
          email: @data_user['user_reg'], password: @data_user['pass_reg']
        },
        :'registered with payment method' => {
          email: @data_user['user_rega'], password: @data_user['pass_rega']
        },
        :'registered with telefonia movil payment method' => {
          email: @data_user['user_regatm'], password: @data_user['pass_regatm']
        },
        :'registered with telefonia fija payment method' => {
          email: @data_user['user_regatf'], password: @data_user['pass_regatf']
        },
        :subscribed => {
          email: @data_user['user_sus'], password: @data_user['pass_sus']
        },
        :degustation => {
          email: @data_user['user_degus'], password: @data_user['pass_degus']
        },
        :'registered with parental control' => {
          email: @data_user['user_reg_cp'], password: @data_user['pass_reg_cp']
        },
        :'subscribed with parental control' => {
          email: @data_user['user_sus_cp'], password: @data_user['pass_sus_cp']
        },
        :'subscribed live telmex' => {
          :chrome => { email: @data_user['user_sus_lc_tf_cr'], password: @data_user['pass_sus_lc_tf_cr'] },
          :safari => { email: @data_user['user_sus_lc_tf_saf'], password: @data_user['pass_sus_lc_tf_saf'] },
          :mozilla => { email: @data_user['user_sus_lc_tf_moz'], password: @data_user['pass_sus_lc_tf_moz'] }
        },
        :'subscribed live tdc' => {
          :chrome => { email: @data_user['user_sus_lc_tdc_cr'], password: @data_user['pass_sus_lc_tdc_cr'] },
          :safari => { email: @data_user['user_sus_lc_tdc_saf'], password: @data_user['pass_sus_lc_tdc_saf'] },
          :mozilla => { email: @data_user['user_sus_lc_tdc_moz'], password: @data_user['pass_sus_lc_tdc_moz'] }
        },
        :'registered live tdc' => {
          :chrome => { email: @data_user['user_rega_lc_tdc_cr'], password: @data_user['pass_rega_lc_tdc_cr'] },
          :safari => { email: @data_user['user_rega_lc_tdc_saf'], password: @data_user['pass_rega_lc_tdc_saf'] },
          :mozilla => { email: @data_user['user_rega_lc_tdc_moz'], password: @data_user['pass_rega_lc_tdc_moz'] }
        },
        :'registered live telmex' => {
          :chrome => { email: @data_user['user_rega_lc_tf_cr'], password: @data_user['pass_rega_lc_tf_cr'] },
          :safari => { email: @data_user['user_rega_lc_tf_saf'], password: @data_user['pass_rega_lc_tf_saf'] },
          :mozilla => { email: @data_user['user_rega_lc_tf_moz'], password: @data_user['pass_rega_lc_tf_moz'] }
        },
        :'subscribed monitoring' => {
          email: @data_user['user_sus_mon'], password: @data_user['pass_sus_mon']
        },
        :'registered telmex' => {
          email: @data_user['user_reg_telm'], password: @data_user['pass_reg_telm']
        },
        :'registered telcel' => {
          email: @data_user['user_reg_telcel'], password: @data_user['pass_reg_telcel']
        },
        :'registered tdc'=> {
          email: @data_user['user_reg_tdc'], password: @data_user['pass_reg_tdc']
        },
        :'registered with noggin'=> {
          email: @data_user['user_reg_noggin'], password: @data_user['pass_reg_noggin']
        },
        :'registered with crackle'=> {
          email: @data_user['user_reg_crackle'], password: @data_user['pass_reg_crackle']
        },
        :'registered with hbo'=> {
          email: @data_user['user_reg_hbo'], password: @data_user['pass_reg_hbo']
        },
        :'registered with fox'=> {
          email: @data_user['user_reg_fox'], password: @data_user['pass_reg_fox']
        },
        :'generic registered' => {
          email: @data_user["user_generic_#{Utils.browser}"], password: @data_user['pass_generic']
        },
        :'generic pin registered' => {
          email: @data_user['user_generic_pin'], password: @data_user['pass_generic_pin_claro']
        },
        :'generic registered new password' => {
          email: @data_user["user_generic_#{Utils.browser}"], password: @data_user['pass_generic_changed_pin_claro']
        },
        :'outlook user' => {
          email: @data_user['outlook_user'], password: @data_user['outlook_password']
        }
      }
    end

    # Credentials setter for a specific user.
    # Expected to be used for logins.
    def for_user(user_type)
      startup if @credentials_catalog.nil?
      Info.basic user_type
      case user_type
      when :anonymous, :registered, :'registered with payment method', :'registered with telefonia movil payment method',
        :'registered with telefonia fija payment method', :subscribed, :degustation, :'registered with parental control',
        :'subscribed with parental control', :'subscribed monitoring', :'registered telmex', :'registered telcel',
        :'registered tdc',:'registered with noggin', :'registered with crackle', :'generic registered',
        :'generic pin registered', :'registered with hbo', :'registered with fox', :'generic registered new password',
        :'outlook user'
        Info.basic "Inicializando credenciales para usuario #{user_type}."
        @credentials = @credentials_catalog[user_type]
      when :'subscribed live telmex', :'subscribed live tdc', :'registered live tdc', :'registered live telmex'
        Info.basic "Inicializando credenciales para usuario #{user_type}."
        @credentials = @credentials_catalog[user_type][Utils.browser]
      else
        raise "Opción #{user_type} inválida para el caso."
      end
      @credentials[:user_type] = user_type
    end

    # Método para establecer las credenciales por usuario.
    # @param [String] username Nombre del usuario
    # @param [String] password Contraseña del usuario
    # @param [Symbol] user_type Tipo de usuario del que se iniciaron credenciales.
    def assign(username:, password:, user_type:)
      raise 'El nombre de usuario no puede estar vacío' if username.nil?
      raise 'La contraseña no puede estar vacía' if password.nil?
      raise 'El tipo de usuario no puede estar vacío' if user_type.nil?
      @credentials[:email] = username
      @credentials[:password] = password
      @credentials[:user_type] = user_type
      Info.basic 'Credenciales usadas:'
      Info.basic "Nombre de usuario: #{username}"
      Info.basic "Contraseña del usuario: #{password}"
      Info.basic "Tipo de usuario: #{user_type}"
    end

    # Método para obtener las credenciales por usuario.
    def data
      startup if @credentials.nil?
      raise 'Aún no se tienen credenciales' if @credentials[:email] == :none ||
                                               @credentials[:password] == :none ||
                                               @credentials[:user_type] == :none
      @credentials
    end

    # Método para obtener el tipo de usuario que se está usando en la prueba.
    def user_type
      startup if @credentials.nil?
      raise 'Aún no se tienen credenciales' if @credentials[:user_type].nil?
      @credentials[:user_type]
    end

  end
end
