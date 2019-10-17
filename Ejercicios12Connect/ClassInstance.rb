require './ModuloPotencia.rb'
require './SumaResta.rb'
require './MultiplicacionDivision.rb'
require './Participantes.rb'
class ClassInstance
  @class1 = SumaResta.new
  @class2 = MultiplicacionDivision.new

  puts "MENÚ DE OPERACIONES
          1. Suma
          2. Resta
          3. Multiplicacion
          4. Division
          5. Potencia
          6. Modulo
          7. Imprimir participantes"
  puts "INGRESA OPCIÓN DEL MENÚ:"
  @answer = gets.chomp

  case @answer
  when "1"
    @class1.sum
  when "2"
    @class1.subtraction
  when "3"
    @class2.multiplication
  when "4"
    @class2.division
  when "5"
    puts "Ingresa número: "
    number1 = gets.to_i
    puts "Ingresa la potencia a elevar"
    number2 = gets.to_i
    ModuloPotencia.potencia(number1, number2)
    puts "aqui va a ir potencia"
  when "6"
    puts "Ingresa primer número a dividir: "
    number1 = gets.to_i
    puts "Ingresa segundo número a dividir: "
    number2 = gets.to_i
    ModuloPotencia.module(number1, number2)
  when "7"
    @class3 = Participantes.new("Lonny", "Marbella")
  else
    puts "opción no reconocida"
  end

end


