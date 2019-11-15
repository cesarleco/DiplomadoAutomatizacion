class SumaResta

  def sum
    puts "Ingresa numero 1"
    numberone = gets.to_i
    puts "Ingresa numero 2"
    numbertwo = gets.to_i
    @result = numberone + numbertwo
    puts "El resultado de la suma es" + @result.to_s
  end

  def subtraction
    puts "Ingresar numero 3"
    number3 = gets.to_i
    result2 = @result - number3
        puts "El resultado de las resta entre #{@result} y #{number3} + es:" + result2.to_s


  end

  product = SumaResta.new
  product.sum
  product.subtraction



end