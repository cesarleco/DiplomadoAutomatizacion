
hashBrowser = Hash.new

hashBrowser = {"num_1"=>"23", "num_2"=>"54", "num_3"=>"56", "num_4"=>"67", "num_5"=>"2", "num_6"=>"67"}

num = hashBrowser["num_1"]
num2 = hashBrowser["num_2"]
num3 = hashBrowser["num_3"]
num4 = hashBrowser["num_4"]
num5 = hashBrowser["num_5"]
num6 = hashBrowser["num_6"]

suma = num , num2 , num3 , num4 , num5 , num6

total = suma.sort

puts "El orden es: #{total}"
puts "El minimo es: #{total.min}"
puts "El maximo es: #{total.max}"




