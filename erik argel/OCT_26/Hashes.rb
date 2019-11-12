# Un Hash nos permite almacenar elementos como llave valor --> k,v
# Creamos un objeto de tipo hash estructura {llave => valor}


hashBrowsers = Hash.new
hashBrowsers = {"Chrome"=>"chromedriver.exe", "Firefox"=>"geckdriver.exe"}
puts hashBrowsers


#invocamos un valor especifico en un hash por su llave se pone de la siguiente forma

puts hashBrowsers["Firefox"]


#Otra forma de crear un hash es..

hashDefault=Hash.new("ValorDefault") #A cualquier llave que no tenga valor le pondra nulo

puts hashDefault ["valoruno"] #Imprimiendo el contenido den llave de valor uno imprimira el texto nulo
hashDefault["PlataformaUno"] = "iOS"
hashDefault["PlataformaDos"] = "Android"
puts hashDefault ["PlataformaDos"]
puts hashDefault ["PlataformaTres"]


