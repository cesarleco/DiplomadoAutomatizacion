begin
  filer = File.open("/Users/neyraa/Documents/TextoUno.txt", 'r')
  filerdos=  File.open("/Users/neyraa/Documents/TextoDos.txt", 'r')
  filew = File.open("/Users/neyraa/Documents/Uno.txt", 'a+')

  while !filer.eof? & !filerdos.eof?
    filew.puts filer.read()
    filew.puts filerdos.read()
  end

rescue Exception => err
  puts "Error generico, no sabemos que hacer"
end
