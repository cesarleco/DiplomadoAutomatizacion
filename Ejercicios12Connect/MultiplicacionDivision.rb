class MultiplicacionDivision
  def initialize(world)
  puts "Ingresa numero 1"
  @numberone = gets.to_i
  puts "Ingresa numero 2"
  @numbertwo = gets.to_i
  end

  def multiplicacion

    result = @numberone * @numbertwo
    puts "El resultado de la multiplicacion es" + result.to_s
  end

 def division
   result = @numberone / @numbertwo
   puts "el resultado de la division es" + result.to_s

 end

  product = MultiplicacionDivision.new( self)
  product.multiplicacion
  product.division

end