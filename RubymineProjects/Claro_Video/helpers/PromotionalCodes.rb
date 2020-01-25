#
# The Promotional Codes handler class
#
class PromotionalCodes

  #
  # Creates a PromotionalCodes instance
  # @param [String] source_file The file where the input promotional codes are located.
  # @param [String] output_file The file where the used promotional codes will be written.
  # @raise [RuntimeError] if source_file or output_file are not provided or don't exist in the provided path.
  # @example
  #   source = File.join(File.dirname(__FILE__), '../../config/data/codigos_promo/codigos_ejemplo.txt')
  #   output = File.join(File.dirname(__FILE__), '../../config/data/codigos_promo/salidas_ejemplo.txt')
  #   code_handler = PromotionalCodes.new source_file: source, output_file: output
  def initialize(source_file:, output_file:)
    raise 'Falta especificar el archivo de origen de los códigos.' if source_file.nil?
    raise 'Falta especificar el archivo de destino para los códigos usados.' if output_file.nil?
    raise "No se encuentra el archivo con los códigos promocionales en la ruta especificada:\n#{source_file}" if !File.exist? source_file
    @source_codes_filename = source_file
    @spent_codes_filename = output_file
  end

  #
  # Provides a new promotional code.
  # All operations are thought to be atomic, since many tests may require promotional codes at the same time
  # @return [String] A new promotional code. Note that the provided code is trailed by a newline character.
  # @raise [EOFError] if the file has no promotional codes to be read.
  def get_promotional_code
    begin
      source_codes = File.open @source_codes_filename, 'r'
      current_code = source_codes.readline
      source_codes.close
      current_code
    rescue EOFError
      # Y si readline no tiene nada que leer, lanza un error y aquí se atrapa y se entrega un mensaje descriptivo.
      puts 'Ya no existen códigos disponibles.'
      raise 'Ya no existen códigos promocionales disponibles.'
    end
  end

  #
  # Provides a spent promotional code.
  # All operations are thought to be atomic, since many tests may require promotional codes at the same time
  # @return [String] A spent promotional code. Note that the provided code is trailed by a newline character.
  # @raise [EOFError] if the file has no spent promotional codes to be read.
  def get_spent_promotional_code
    begin
      spent_codes = File.open @spent_codes_filename
      current_code = spent_codes.readline
      spent_codes.close
      current_code
    rescue EOFError
      puts 'No existen códigos usados en la lista.'
      raise 'No existen códigos usados en la lista.'
    end
  end

  #
  # Moves the first promotional code in source_file to the list of output_file codes.
  # Be careful to use this method, since this depends completely upon your implementation logic.
  # All operations are thought to be atomic, since many tests may require promotional codes at the same time
  def shift_promotional_code
    source_codes = File.open @source_codes_filename, 'r'
    current_code = source_codes.readline
    remaining_codes = source_codes.read
    source_codes.close

    used_codes = File.open @spent_codes_filename, 'a+'
    used_codes.write current_code
    used_codes.close

    source_codes = File.open @source_codes_filename, 'w'
    source_codes.write remaining_codes
    source_codes.close
  end

end
