#Declarar objeto
#hashNumeros = Hash.new

#Agregamos valores al hash con números sin comillas...
#hashNumeros =[5, 10, 15, 20, 25, 30]
#num = hashNumeros.sort

#Imprimir los valores
#puts "Los números son: #{hashNumeros} "
#puts "El minimo es: #{num.min}"
#puts "El minimo es: #{num.max}"

hashSuma  = {

    var: 5,
    var2: 8,
    var3: 45,
    var4: 32,
    var5: 12,
}

sum = 0
hashSuma.each do |key, value|
  puts sum += value
end

  begin
  rescue Exception => err1
    puts "Error generico"
  end






