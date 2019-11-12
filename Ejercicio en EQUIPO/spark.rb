require './auto.rb'

class Spark
  sparkCesar= Auto.new("", "")
  sparkCesar.passengers("5")
  #sparkCesar.accelerate("90")
  sparkCesar.gas_container("32")
  resultado = sparkCesar.returnSpeed
  sparkCesar.accelerate(resultado)
  puts(resultado)
end