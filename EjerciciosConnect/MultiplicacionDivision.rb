class MultiplicacionDivision

  def multiplication
    puts "Ingresa primer número a multiplicar: "
    number1 = gets.to_i
    puts "Ingresa segundo número a multiplicar: "
    number2 = gets.to_i
    result = number1 * number2
    puts 'El resultado de la multiplicacion es:' + result.to_s
  end

  def division
    puts "Ingresa primer número a dividir 1: "
    number1 = gets.to_i
    puts "Ingresa segundo número a dividir 2: "
    number2 = gets.to_i
    result = number1 / number2
    puts 'El resultado de la división es:' + result.to_s
  end

=begin
  DESCOMENTAR ESTAS LÍNEAS MARCADAS CON "#" CUANDO SE EJECUTEN
  LOS MÉTODOS DIRECTAMENTE EN EL ARCHIVO,
  EN CASO CONTRARIO SE EJECUTARÁN DESDE ClassInstance.rb
=end

  #product = MultiplicacionDivision.new(self )
  #product.multiplication
  #product.division
end