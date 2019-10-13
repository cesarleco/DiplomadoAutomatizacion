class ModExponen

  #Constructor que muestra el nombre de todos los integrantes del equipo
  def initialize
    puts "Abraham"
    puts "Marbella"
    puts "Elías"
    puts "Karen"
    puts "Loni"
  end
#Este método obtiene el residuo de la división de dos números
  def self.residuo(val1, val2)
    result = val1 % val2
    return result
  end

#Este método eleva otro número a su exponente
  def self.expon(val1, val2)
    result = val1 ** val2
    return result
  end

end