
listaHash = {"url1"=>"https://www.google.com", "url2"=> "https://facebook.com", "url3"=>"https://claromusica.com", "url4"=>"https://espndeportes.com", "url5"=>"https://clarovideo.com"}
puts "La longitud del hash es: #{listaHash.size()}"
puts listaHash.length()

# El métooo key?(Llave) me regresa true o false dependiendo si la llave existe en el hash
puts listaHash.key?("url2") #regresa True
puts listaHash.key?("url6") #regresa Falso

#Iterar el hash
listaHash.each do |k,v|
  puts "El valor de: #{k} es: #{v}"
end
