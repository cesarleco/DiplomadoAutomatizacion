begin
  require 'colorize'
rescue LoadError
  Info.basic 'La gema colorize no se encuentra instalada. Los logs se generan de igual forma.'
end

class Info

  @levels = {
    none: 0,
    basic: 1,
    medium: 2,
    advanced: 4
  }
  @current_level = 1

  class << self
    attr_reader :current_level
  end

  def self.set_level(*levels)
    raise 'Se necesita por lo menos un nivel' if levels.none?
    new_level = 0
    levels.uniq.each do |level|
      raise 'Llave inválida. Se permiten :none, :basic, :medium y :advanced' unless @levels.key? level
      new_level += @levels[level]
    end
    @current_level = new_level
  end

  def self.warning(message)
    color_print message, :light_yellow
  end

  def self.basic(message)
    return unless current_level is: :basic
    color_print message, :light_blue
  end

  def self.medium(message)
    return unless current_level is: :medium
    color_print message, :light_cyan
  end

  def self.advanced(message)
    return unless current_level is: :advanced
    color_print message, :light_magenta
  end

  def self.basic_error(message)
    return unless current_level is: :basic
    color_print message, :light_red
  end

  def self.medium_error(message)
    return unless current_level is: :medium
    color_print message, :light_red
  end

  def self.advanced_error(message)
    return unless current_level is: :advanced
    color_print message, :light_red
  end

  def self.error(message)
    color_print message, :light_red
  end

  def self.color_print(message, color)
    if defined?(''.colorize color)
      puts message.to_s.colorize color
    else
      puts message
    end
  end

  def self.current_level(is:)
    @current_level & @levels[is] > 0
  end

end
