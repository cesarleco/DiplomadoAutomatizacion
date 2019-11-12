require './principal.rb'
class Puntouno

  def initialize
    tresMod = Principal.new()
    @uno = tresMod.returnnumber1
    @dos = tresMod.returnnumber2
  end

  def multiplicacion()
    mult = (@uno.to_i * @dos.to_i)
    puts "Resultado del multiplicacion es:"+ mult.to_s
  end

  def division
    if @dos==0
      puts"Operacion indefinida"
    else
      div= (@uno.to_i / @dos.to_i)
      puts"Resultado de la División es:" + div.to_s
    end
  end

end