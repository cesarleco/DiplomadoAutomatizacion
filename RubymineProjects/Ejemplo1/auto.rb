class Auto

  #Contsructor de dos parametros - "Enciende el auto" y "abrocha los conturones""
  def initialize(mensajeUno,mensajeDos)
    puts "Enciende el auto " + mensajeUno
    puts "abrocha los cinturones" + mensajeDos


  end

  #Crear metodo para acelerar el coche
  def acelerar(speed)
    puts "La velodicdad del auto es " + String(speed)
    puts "La velocidad del auto es " + speed.to_s

  end

  #Crear un metodo para indicar el numero de pasajeros que viajan

  def passengers(num)
    puts "La velodicdad del auto es " + num
end
    #Crear un metodo para indicar la gasolina en el tanque

    def gasoline_tank(liters)
      puts "La velodicdad del auto es " + liters
    end

  def maxSpeed
    maxSpeed = 100 + 80
    return maxSpeed
  end

  end