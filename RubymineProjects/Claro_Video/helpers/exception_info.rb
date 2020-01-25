# Exception Information
require_relative 'Info'

class ExceptionInformation

  class << self

    def raise_web_exception(description, error_object)
      Info.error error_object
      raise "#{description}"
    end

  end

end