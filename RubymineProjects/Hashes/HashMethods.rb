listaHash = {"url1"=>"https://www.google.com.", "url2"=>"https://www.facebook.com", "url3"=>"https://www.clarovideo.com", "url4"=>"https://www.gmail.com", "url5"=>"https://www.claromusica.com"}
#Obtener la longitud del hash

#puts "La longitud del hash es: #{listaHash.size()}"
#puts listaHash.length()

# El metodo key?(llave) me regresa true o false dependiendo si la llave existe en el hash

#puts listaHash.key?("url2")#regresa tru
#puts listaHash.key?("url6")#regresa false

#Interar el hash

listaHash.each do |k,v|
  puts "El valor de : #{k} es: #{v}"
  # Obtener valores
end

# Ordenarlos
# Obtener el minimo
# Maximo