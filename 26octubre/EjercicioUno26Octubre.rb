# Creamos una variable donde guardamos la referencia de nuestro archivo, la 'r' es para indicar que es solo lectura
begin
file = File.open("/Users/HITSS/Documents/mis documentos/accesos.txt", 'r')
fileDos = File.open("/Users/HITSS/Documents/mis documentos/colombia.txt", 'r')
filer = File.open("/Users/HITSS/Documents/mis documentos/deplink.txt", 'a+')

#abrir dos archivos y copiar lo que tenga en otro declarar objeto que abre el documento con 'a+' para escribrir lo que tiene
# el archivo 3
while !file.eof?
  filer.puts file.readlines
  filer.puts fileDos.readlines
end

  file = File.open("C:\\ArchivoInexistente.txt", 'r')
rescue Exception => err1
  puts "Error generico"
end
