# este ejercicio sirve para poder interactuar con un archivo txt para modificarlo abrirlo, etc
#creamos una variable donde guardamos la referencia de nuestro archivo, la 'r' es para indicar que es de lectura
file = File.open("C:\\Users\\s_becerraea\\Desktop\\1.txt", 'r') #siempre debe ir diagonal invertida doble \\ o si es diagonal simple solo lleva 1 /|

#leer todas las lineas del archivo

while !file.eof? #! eof signifia que mientras no sea el final del archivo
  puts file.readlines() #.readline() manda solo la primer linea del archivo .readlines() manda todo el archivo
end

#File.close()
# para escribir en un archivo

fileWrite = File.open("C:\\Users\\s_becerraea\\Desktop\\2.txt", 'w')
fileWrite. puts "Linea de texto uno"
fileWrite. puts "otra inea de texto cambio"
fileWrite. puts "Mas texto "
fileWrite. puts "un poco mas"

#File.close()



fileAdd = File.open("C:\\Users\\s_becerraea\\Desktop\\2.txt", 'a+')
fileAdd.puts "texto numero uno"
fileAdd.puts "Otro Texto..."



#fileCopy = File.open("C:\\Users\\s_becerraea\\Desktop\\1.txt", 'r', 'c')
#while !fileCopy.eof?
 #  fileCopy.select()
  #fileCopy.clone
#end
#fileNew = File.open("C:\\Users\\s_becerraea\\Desktop\\4.txt", 'a+' )
#fileNew. puts fileCopy.readlines()


#solucion en clase
#
fileCopy = File.open("C:\\Users\\s_becerraea\\Desktop\\1.txt", 'r')
fileNew = File.open("C:\\Users\\s_becerraea\\Desktop\\4.txt", 'a+' )

while !fileCopy.eof?
  fileNew. puts fileCopy.readlines()
end