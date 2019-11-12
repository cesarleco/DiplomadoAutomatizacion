class Principal
  @num1
  @num2
  def initialize()
    puts "Ingresa primer número:"
    @num1= gets()
    puts "Ingresa segundo número:"
    @num2=gets()
  end

  def returnnumber1
      return @num1
  end

  def returnnumber2
    return @num2
  end
end