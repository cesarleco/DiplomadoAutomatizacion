
filer = File.open("C:\\Users\\cesar\\Desktop\\Dropbox\\Diplomado Automatización\\leerArchivo.txt", 'r')
filew = File.open("C:\\Users\\cesar\\Desktop\\Dropbox\\Diplomado Automatización\\escribirArchivo.txt", 'w')


while !filer.eof?
  filew.puts filer.readlines()
end
