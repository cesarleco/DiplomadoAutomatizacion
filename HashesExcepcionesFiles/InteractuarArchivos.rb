#Creamos una variable donde guardamos la referencia de nuestro archivo, la r es para indicar que únicamente lo vamos a leer
=begin
file = File.open("C:\\Users\\cesar\\Desktop\\Dropbox\\Diplomado Automatización\\ArchivoRuby.txt", 'r')
file2 = File.open("C:/Users/cesar/Desktop/Dropbox/Diplomado Automatización/ArchivoRuby.txt", 'r')

#Leer todas las líneas del archivo
#puts file.readline()
#puts file.readlines()

while !file.eof?
  file.readline()
end

file.close()

fileWrite = File.open("C:/Users/cesar/Desktop/Dropbox/Diplomado Automatización/writting.txt", 'w')
fileWrite.puts "Linea de texto uno"
fileWrite.puts "otra linea de textooooooooo"
fileWrite.puts "mas texto"
fileWrite.puts "un poco mas.........."
file.close()
=end
fileAdd = File.open("C:/Users/cesar/Desktop/Dropbox/Diplomado Automatización/appendFile.txt", 'a+')
fileAdd.puts "texto numero uno"
fileAdd.puts "Otro Texto..."

fileAdd.close()









