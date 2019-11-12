

file = File.open("C:\\Users\\s_becerraea\\Desktop\\1.txt", 'r')
file2 = File.open("C:\\Users\\s_becerraea\\Desktop\\2.txt", 'r')
fileNew = File.open("C:\\Users\\s_becerraea\\Desktop\\3.txt", 'a+' )

while !file.eof? and !file2.eof?
fileNew.puts file.readlines()
fileNew.puts file2.readlines()
end
