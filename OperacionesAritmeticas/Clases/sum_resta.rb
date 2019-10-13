class SumResta

  #Constructor que muestra el nombre de todos los integrantes del equipo
  def initialize
    puts "Abraham"
    puts "Marbella"
    puts "Elías"
    puts "Karen"
    puts "Loni"
  end
  #Este método suma dos números y regresar el resultado
  def suma(val1, val2)
    result = val1 + val2
    puts "El resultado de la suma es: " + result.to_s
    return result
  end

  #Este método realiza la división de dos números y regresa el resultado
  def resta(val1, val2)
    result = val1 - val2
    puts "El resultado de la resta es: " + result.to_s
  end

end