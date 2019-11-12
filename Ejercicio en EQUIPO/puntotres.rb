require './principal.rb'
class Puntotres

  def initialize
    tresMod = Principal.new()
    @@uno = tresMod.returnnumber1
    @@dos = tresMod.returnnumber2
    puts @@uno
    puts @@dos

  end

  def self.modulo

    modu = (@@uno.to_i % @@dos.to_i)
    puts "Resultado del modulo es:"+ modu.to_s
  end

  def self.potencia
    potenc= (@@uno.to_i ** @@dos.to_i)
    puts"Resultado de la potencia es:" + potenc.to_s
  end
end