maxmindos = Hash.new
max=0
min=0
maxmindos = {"num 1" => 5,"num 2" => 15,"num 3" => 20,"num 4" => 2,"num 5" => 9, "num6" => 7}
maxmindos.each { |k, v| max = maxmindos.values.max}
puts "El maximo es: #{max}"

maxmindos.each { |k, v| min = maxmindos.values.min}
puts "El maximo es: #{min}"

