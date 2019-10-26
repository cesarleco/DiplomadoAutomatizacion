
listaHash = {"url1"=>"https://www.google.com", "url2"=>"https://www.facebook.com", "url3"=>"https://www.clarovideo.com","url4"=>"https://www.claromusica.com","url5"=>"https://www.yahoo.com"}
#Obtener la longitud del hash
puts "La longitud del hash es: #{listaHash.size()}"
puts listaHash.length()

# El método key?(llave) me regresa true o false dependiendo si la llave existe en el hash
puts listaHash.key?("url2") #Regresa true
puts listaHash.key?("url6") #Regresa false

#Iterar el hash
listaHash.each do |k,v|
  puts "El valor de: #{k} es: #{v}"
end


