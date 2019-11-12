class Auto

   #constructor de 2 parametros--Enciende el auto y abrocha cinturones
 def initialize(mensajeUno,mensajeDos)
   puts "Encendiendo el auto" + mensajeUno
   puts "abrochar cinturones" + mensajeDos
 end

  #crear un metodo para acelerar el coche
  def accelerate(speed)
   # puts "La velocidad del auto es" + speed
    puts "La velocidad del auto es" + speed.to_s
  end

  #crear metodo para indicar el número de pasajeros que viajarán
  def passengers(numb)
    puts "El número de pasajero en este vehículo es: " + numb
  end

  #metodo para indicar gasolina de tanque
  def gas_container(liters)
    puts "litros contenidos en el tanque son: "+ liters
  end

  def returnSpeed
    maxSpeed = 100 + 80
    return maxSpeed
  end
end