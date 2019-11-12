# Un hash nos permite almacenar elementos como llave valor --> R, V
# Creamos un objeto de tipo hash {Llave=>valor}

hashBrowsers = Hash.new
#Agregamos valores al hash...
hashBrowsers= {"Chrome"=>"chromedriver.exe", "Firefox"=>"geckodriver.exe"}
puts hashBrowsers

# Invocamos un valor especifico del Hash por su llave
puts hashBrowsers["Firefox"]

#Otra manera de crear un hash es...
hashDefault=Hash.new("Valor Default") # A cualquier llave que no tenga valor le asigno nulo
puts hashDefault["Valor Uno"] #Imprimiendo el contenido en llave valorUno
hashDefault["PlataformaUno"]="iOS"
hashDefault["PlataformaDos"]="Android"
puts hashDefault["PlataformaDos"]
puts hashDefault["PlataformaTres"]

