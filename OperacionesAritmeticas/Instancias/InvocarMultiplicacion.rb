require '../Clases/multi_div'

objMulti = MultiDiv.new

puts "Ingresa el primer valor de la multiplicación: "
val1 = gets()
puts "Ingresa el segundo valor de la multiplicación: "
val2 = gets()
puts "Ingresa el tercer valor de la multiplicación: "
val3 = gets()

message = objMulti.multi(val1.to_i, val2.to_i, val3.to_i)

puts "El resultado de la multiplicación es: #{message.to_s}"

puts "Ingresa el primer valor de la multiplicación: "
val4 = gets()
puts "Ingresa el segundo valor de la multiplicación: "
val5 = gets()
message2 = objMulti.division(val4.to_i, val5.to_i)
puts "El resultado de la multiplicación es: #{message2}"