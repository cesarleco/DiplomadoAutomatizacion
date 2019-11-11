class ModuloPotencia

  def initialize(world)
    puts "Ingresa numero 1"
    @numberone = gets.to_i
    puts "Ingresa numero 2"
    @numbertwo = gets.to_i

  end

  def module
    result = @numberone % @numbertwo
    puts "El resultado del modulo es" + result.to_s

  end
  product = ModuloPotencia.new ( self )
  product.module
end

