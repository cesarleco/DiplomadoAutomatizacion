begin
file = File.open("/Users/BASSP/RubymineProjects/Hashes/DirectorioDiplomado.txt", 'r')
file1 = File.open("/Users/BASSP/RubymineProjects/Hashes/DirectorioDiplomado2.txt", 'r')
fileAdd = File.open("/Users/BASSP/RubymineProjects/Hashes/DirectorioDiplomado4.txt", 'a+')

while !file.eof?
  fileAdd.puts file.readlines + file1.readlines

end


  file = File.open("/Users/BASSP/RubymineProjects/Hashes/DirectorioDiplomado4.txt", 'r')
rescue ZeroDivisionError => err
  puts "Esta division es entre cero, favor de verificar"
rescue Exception => err
  puts "Error generico, no sabemos que hacer"
end
