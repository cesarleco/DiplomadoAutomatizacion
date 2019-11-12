class Punto2

  def initialize
    tresMod = Principal.new()
    @uno = tresMod.returnnumber1
    @dos = tresMod.returnnumber2
  end

  def suma
    sum = (@uno.to_i + @dos.to_i)
    puts "Resultado del Suma es:"+ sum.to_s
    return sum
  end

  def resta(modu)
    res= (modu.to_i - @dos.to_i)
    puts"Resultado de la Resta es:" + res.to_s
  end

end