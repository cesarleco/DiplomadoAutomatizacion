filerOne = File.open("C:\\FileInteraction\\ExerciseReadFileOne.txt", 'r')
filerTwo = File.open("C:\\FileInteraction\\ExerciseReadFileTwo.txt", 'r')
fileWrite = File.open("C:\\FileInteraction\\ExerciseWritteFile.txt",'a+')

while !filerOne.eof?
  fileWrite.puts filerOne.readlines()
end

while !filerTwo.eof?
  fileWrite.puts filerTwo.readlines()
end

begin
rescue Exception => err
  puts "Generic error"
end

