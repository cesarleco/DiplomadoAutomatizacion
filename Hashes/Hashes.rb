#Un hash nos permite almacenar elementos como llave valor --> R,V
# Creamos un objeto de tipohash {llave=>valor}


hashBrowser = Hash.new
hashBrowser = {"Chrome"=>"chromedriver.exe", "Firefox"=>"geckodriver.exe"}
puts hashBrowser
#Invocamos un valor en especifico del hash por llave

puts hashBrowser["Firefox"]
puts hashBrowser["Edge"]

#Otra forma de crear un hash es...

hashDefault=Hash.new("nulo") #a cualquier llave que no tenga valor asignado
puts hashDefault["valoruno"] #Estoy imprimiendo el contenido en mi llave valoruno
hashDefault["PlataformaUno"]= "IOS"
hashDefault["PlataformaDos"]= "Android"
puts hashDefault["PlataformaDos"]
puts hashDefault["PlataformaTres"]
hashDefault={"PlatCuatro"=>""}
puts hashDefault["PlatCuatro"]