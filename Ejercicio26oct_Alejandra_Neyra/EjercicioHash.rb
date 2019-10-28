sumashash = Hash.new
sumashash = {"num 1" => 5,"num 2" => 10,"num 3" => 10,"num 4" => 10,"num 5" => 10}
suma = 0

sumashash.each {|clave, valor| puts "#{clave} es:  #{valor}"}
sumashash.each {|k, v| suma = suma + v}
puts "La sumas es: #{suma} "

