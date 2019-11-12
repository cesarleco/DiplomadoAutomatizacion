#Creamos una variable donde guardamos la referencia de nuestro archivo, La r es para indicar que unicamente lo vamos a leer
file = File.open("/Users/BASSP/RubymineProjects/Hashes/DirectorioDiplomado.txt", 'r')
fileAdd = File.open("/Users/BASSP/RubymineProjects/Hashes/DirectorioDiplomado3.txt", 'a+')
#Leer todas las lineas del archivo
#puts file.readline()
#puts file.readlines()
while !file.eof?
 fileAdd.puts file.readlines

end

#file.close()

#fileWrite = File.open("/Users/BASSP/RubymineProjects/Hashes/DirectorioDiplomado3.txt", 'w')
 #fileWrite.puts = file.readline
#fileWrite.puts "otra linea de texto"
#fileWrite.puts "mas texto"
#fileWrite.puts "un poco mas......"

#file.close()

#fileAdd = File.open("/Users/BASSP/RubymineProjects/Hashes/DirectorioDiplomado2.txt", 'a+')
#fileAdd.puts "texto nuemero uno"
#fileAdd.puts "Otro texto..."