# Creamos una variable donde guardamos la referencia de nuestro archivo, la 'r' es para indicar que es solo lectura
file = File.open("/Users/HITSS/Documents/mis documentos/accesos.txt", 'r')
filer = File.open("/Users/HITSS/Documents/mis documentos/accesos.txt", 'a+')
# Leer todas las lineas del archivo
#while !file.eof?
 #  file.readline()
#end

#abrir un archivo y copiar lo que tenga en otro declarar objeto que abre el documento con 'a+' para escribrir lo que tiene
# el archivo 1 en el 2.
while !file.eof?
  filer.puts file.readlines
end

#fileWrite = File.open("/Users/hectorfranciscoevangelistaramirez/RubymineProjects/Octubre26/QueridoSantoClos2.txt", 'w')
#fileWrite.puts "Mejor no santa"
#fileWrite.puts "3 pomos de whisky"
#fileWrite.puts "Más vale pedir"
#fileWrite.puts "Muchas gracias."
#file.close()

#fileAdd = File.open("/Users/hectorfranciscoevangelistaramirez/RubymineProjects/Octubre26/QueridoSantoClos.txt", 'a+')
#fileAdd.puts "Texto numero uno"
#fileAdd.puts "Texto numero dos"
