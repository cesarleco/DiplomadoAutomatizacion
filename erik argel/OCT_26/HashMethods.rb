# sirve para ver los distintos metodos para Hash
#
#

ListHash = {"Url1"=> "https://www.google.com", "Url2" => "https://www.facebook.com", "Url3" => "https://www.clarovideo.com", "Url4" => "https://www.gmail.com", "Url5"  => "http://www.dominio.com"}
#obtener la longitud del hash
puts "La longitud del hash es #{ListHash.size()}"
puts ListHash.length()

#el método key? me regresa true o false dependiendo si la llave existe en el hash
puts ListHash.key?("Url2") #regresar True
puts ListHash.key?("url7") #debe regresar False


#Iterar el hash metodo de |valor, iteracion|

ListHash.each do |k,v|
  puts "El valor de #{k} es: #{v} "
end


