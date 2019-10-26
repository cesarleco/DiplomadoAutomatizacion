class Arrays

  def primerArreglo
    #Se genera el arreglo y se le pasan los valores
    arr = Array.new(7, "Hola")
    #Se obtiene la longitud del arreglo
    puts arr.length()
    puts arr.size()
    #Se imprime el arrelgo
    puts "#{arr}"
  end

  def segundoArreglo
    arreglo = Array.new(19) {|e| e = e * 2}
    puts "#{arreglo}"

    arreglo2 = Array.[](1,2,3,4,5,6,7,8,9)
    puts "#{arreglo2}"

    digitos = Array(0..18)
    puts "#{digitos}"

    vocales = ['a', 'e', 'i', 'o', 'u']
    puts vocales[2]
    puts vocales[3]
    puts vocales[4]
  end

  def difValores
    varios = [80.4, "Hola", true, false, 33, "ultimo valor"]
    puts "#{varios}"
  end

  def cadena
    varCadena = %w(hector polo silos nancy rocio martin marbella)
    puts "#{varCadena}"
    puts varCadena.to_s
  end
    def lugares
    varLugares = %w(Tamaulipas Querétaro Sinaloa Veracruz Michoacan)
    puts varLugares.length()
    varLugares.delete('Sinaloa')

    varLugares.each do |lugar|
      puts 'Estas en ' + lugar
    end
    puts varLugares.sort()
    puts varLugares.first()
    puts varLugares.last()
  end
end



