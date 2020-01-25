# Api builder class
class ApiBuilder

  @all_params = %i[cm_access_token authpn authpt device_type device_model device_manufacturer device_category device_id
  tenant_code format list_id pagination medias_only region category start current size]
  @api_calls = []
  @parameters = {}
  @current_call = nil
  @status = []
  @uri = {}

  class << self

    attr_reader :uri, :parameters, :current_call, :status

    # Sets the API base url to make the request.
    # @param [String] url The API url to be set.
    # @raise [Exception] if URL is not provided.
    def url(url)
      raise 'No se proporcionó una URL.' unless url
      @uri[@current_call] = {} unless @uri[@current_call]
      @uri[@current_call][:base] = url
      self
    end

    # Sets the API path to make the request.
    # @param [String] path The API path to be set.
    # @raise [Exception] if path is not provided.
    def path(path)
      raise 'No se proporciono path.' unless path
      @uri[@current_call] = {} unless @uri[@current_call]
      @uri[@current_call][:path] = path
      self
    end

    # Creates a singleton method (like inside class << self) for every parameter
    # defined in <@all_params> variable
    def setup
      @all_params.each do |parameter|
        method_name = parameter == :HKS ? :hks : parameter
        define_singleton_method method_name do
          raise 'No se esta construyendo una llamada' unless @current_call
          @parameters[@current_call] = [] unless @parameters[@current_call]
          @parameters[@current_call].push parameter
          @parameters[@current_call].uniq!
          @status.push(:building).uniq!
          self
        end
      end
      @status.push(:initialized).uniq!
    end

    # Deletes all the registered api calls.
    def reset
      @api_calls = []
      @parameters = {}
      @current_call = nil
      @status = []
      @uri = {}
    end

    # Creates a new entry for an api call.
    # The new call may have no default parameters registered.
    # @param [Symbol] name The request name.
    # @raise [Exception] when the parameter is not a symbol.
    def register(name:)
      raise 'El nombre se debe enviar como Símbolo' unless name.is_a? Symbol
      raise 'Existe un nodo en construccion' if
        @status.include?(:building) && !@status.include?(:ready)
      setup unless @status.include? :initialized
      @api_calls.push(name)
      @current_call = name
      @status.clear.push(:registering)
      self
    end

    # Builds the current call to ensure no corrupted data is generated.
    # If this is not the last call, new parameters can be added but no new ones
    # can be registered.
    def build
      @current_call = nil
      @status.push(:ready).uniq!
    end

    # Retrieves if the api_builder is ready to retrieve information.
    def ready?
      @status.include? :ready
    end

    # Retrieves if the URI has all its data completed.
    def complete_uri?(type)
      @uri.include?(type) && !(@uri[type][:base].nil? || @uri[type][:path].nil?)
    end

    # Retrieves if the api call with name <name> is registered.
    # @param [Symbol] name The api call name.
    def include?(name)
      @api_calls.include? name
    end

    # Retrieves the api call with name <name>
    # @param [Symbol] name The api call name
    # @raise [Exception] when the parameter is not a symbol.
    # @raise [Exception] when the name is not registered in the api calls.
    def retrieve(name)
      raise 'El nombre se debe enviar como Símbolo' unless name.is_a? Symbol
      raise "La llamada #{name} no está registrada." unless include? name
      raise 'Existe un nodo en construccion' unless ready?
      raise 'No se ha establecido una URI correcta.' unless complete_uri? name
      {
        filename: "#{name}_response",
        name: name,
        parameters: @parameters[name],
        uri: @uri[name]
      }
    end
  end
end