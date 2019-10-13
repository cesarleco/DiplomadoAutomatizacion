class MultiDiv

  #Constructor que muestra el nombre de todos los integrantes del equipo
  def initialize
    puts "Abraham"
    puts "Marbella"
    puts "Elías"
    puts "Karen"
    puts "Loni"
  end
  #Este método multiplica tres números y regresar el resultado
  def multi(val1, val2, val3)
    result = val1 * val2 * val3
    return result
  end

  #Este método realiza la división de dos números y regresa el resultado
  def division(val1, val2)
    result = val1 / val2
    return result
  end

end