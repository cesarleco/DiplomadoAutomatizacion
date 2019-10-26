#Un hash nos permite almacenar elementos como llave valor --> k,v

#Creamos un objeto de tipo Hash {llave=>valor}
hashBrowsers = Hash.new
#Agregamos valores al hash...
hashBrowsers = {"Chrome"=>"chromedriver.exe", "Firefox"=>"geckodriver.exe"}
puts hashBrowsers
#Invocamos un valor en específico del Hash por su llave
puts hashBrowsers["Firefox"]
puts hashBrowsers["Edge"]

#Otra manera de crear un hash es...
hashDefault=Hash.new("valorDefault") #A cualquier llave que no tenga un valor asignado le asigne nulo
puts hashDefault["valorUno"] #Imprimiendo el contenido en llave valorUno
hashDefault["PlataformaUno"]="iOS"
hashDefault["PlataformaDos"]="Android"
puts hashDefault["PlataformaDos"]
puts hashDefault["PlataformaTres"]
hashDefault={"PlatCuatro"=>""}
puts hashDefault["PlatCuatro"]

