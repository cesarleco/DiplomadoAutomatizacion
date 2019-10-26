
begin
numUno = 10
numDos = 0
resultado = numUno/numDos
puts resultado
rescue ZeroDivisionError => err
  puts "Esta division es entre cero, favor de verificar"
rescue Exception => err
  puts "Error generico, no sabemos que hacer"

end
begin
  file = File.open("C:\\ArchivoInexistente1234.txt", 'r')
rescue ZeroDivisionError => err
  puts "Esta division es entre cero, favor de verificar"
rescue Exception => err1
 puts "Error generico, no sabemos que hacer"
#rescue
  #puts "Error!!!"
end

