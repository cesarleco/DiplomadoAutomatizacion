# vamos a manejar una excepcion para una division con 0 utilizando begin  y rescue
# estructura
# begin
# codigo
#
# rescue
# end

begin
numUno = 10
numDos = 0
resultado = numUno/numDos
puts resultado
  rescue ZeroDivisionError => err
  puts "esta división es entre cero favor de verificar"

end

begin
file = File.open("C:\\ArchinoInexistente.txt", 'r') #todos los espacios manda errores, no debe llevar espacio en los metodos
rescue ZeroDivisionError => err
puts "esta división es entre cero favor de verificar"
rescue Exception => err1
 puts "Error Generico, no sabemos que hacer"
end

