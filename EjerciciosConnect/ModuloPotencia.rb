class ModuloPotencia

  def self.module(numero1, numero2)
    result = numero1 % numero2
    puts 'El resultado del modulo es:' + result.to_s
  end

  def self.potencia(numero1, numero2)
    result = numero1 ** numero2
    puts "El resultado de #{numero1} a la #{numero2} potencia es:" + result.to_s
  end

  #LOS MÉTODOS SE EJECUTAN EN ClassInstance.rb
end