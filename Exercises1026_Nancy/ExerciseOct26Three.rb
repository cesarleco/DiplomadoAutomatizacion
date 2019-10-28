#Save five numbers in a hash, using a foreach iterar it and add it. Printing result to the add
NumbersHash = {"numOne"=> 5, "numTwo"=> 10, "numThree"=> 15, "numFour"=> 3, "numFive"=> 1, "numSix"=> 20}

puts NumbersHash.key?("numOne")
puts NumbersHash.key?("numTwo")
puts NumbersHash.key?("numThree")
puts NumbersHash.key?("numFour")
puts NumbersHash.key?("numFive")
puts NumbersHash.key?("numSix")

#Iterar the hash
NumbersHash.each do |k,v| #k = key, v= value
  puts "The value of #{k} is: #{v}"
end

max = NumbersHash.values.max
Hash[NumbersHash.select { |k, v| v == max}]
puts "The value maximium to the hash serie is: #{max}"

min = NumbersHash.values.min
Hash[NumbersHash.select { |k, v| v == min}]
puts "The value maximium to the hash serie is: #{min}"


