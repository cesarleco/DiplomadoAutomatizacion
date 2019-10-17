class SumaResta
  
  def sum
    puts "Ingresa primer número a sumar: "
    number1 = gets.to_i
    puts "Ingresa segundo número a sumar: "
    number2 = gets.to_i
    result = number1 + number2
    puts "El resultado de la suma es: " + result.to_s
    return result
  end

  def subtraction
    product = SumaResta.new
    result = product.sum
    puts "Ingresa numero a restarle a #{result.to_i}"
    number3 = gets.to_i
    puts result.to_i
    result2 = result - number3
    puts "El resultado de la resta es: " + result2.to_s
  end

=begin
    DESCOMENTAR ESTAS LÍNEAS MARCADAS CON "#" CUANDO SE EJECUTEN
    LOS MÉTODOS DIRECTAMENTE EN EL ARCHIVO,
    EN CASO CONTRARIO SE EJECUTARÁN DESDE ClassInstance.rb
=end

  #product = SumaResta.new
  #product.sum
  #product.subtraction


end