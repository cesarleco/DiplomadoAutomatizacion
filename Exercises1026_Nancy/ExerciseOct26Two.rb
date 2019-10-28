#Save five numbers in a hash, using a foreach iterar it and add it. Printing result to the add
NumbersHash = {"numOne"=> 5, "numTwo"=> 10, "numThree"=> 15, "numFour"=> 3, "numFive"=> 1}

puts NumbersHash.key?("numOne")
puts NumbersHash.key?("numTwo")
puts NumbersHash.key?("numThree")
puts NumbersHash.key?("numFour")
puts NumbersHash.key?("numFive")

#Iterar the hash
NumbersHash.each do |k,v| #k = key, v= value
  puts "The value of: #{k} is: #{v}"
end

#Print result to the Addition
Add = 0
NumbersHash.each {|k,v| Add = Add + v}

puts "The result of the addition to the numbers are: #{Add}"


