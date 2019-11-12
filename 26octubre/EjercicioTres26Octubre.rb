
#Declarar objeto
numerosMaxMin = {

    varNum: 5,
    varNum2: 13,
    varNum3: 2,
    varNum4: 30,
    varNum5: 4,
    varNum6: 3,
}
numerosMaxMin.each do |key, value|
end

puts "El orden de los números es: #{numerosMaxMin.values.sort}"
puts "El minimo es: #{numerosMaxMin.values.min}"
puts "El máximo es: #{numerosMaxMin.values.max}"