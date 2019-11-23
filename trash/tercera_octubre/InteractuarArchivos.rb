file = File.open('/Users/polosanchez/projects/curso/DiplomadoAutomatizacion/archivo_prueba.txt', 'r')
new_file = File.open('/Users/polosanchez/projects/curso/DiplomadoAutomatizacion/archivo_prueba_dos.txt', 'a+')

while !file.eof?
  new_file_uno = file.readline
  new_file.puts new_file_uno
end

# file = File.open('/Users/polosanchez/projects/curso/DiplomadoAutomatizacion/archivo_prueba.txt', 'a+')
# file.puts "Linea1"
# file.puts "Linea2"
# file.puts "Linea3"
# file.puts "Linea4"
#
# file.close