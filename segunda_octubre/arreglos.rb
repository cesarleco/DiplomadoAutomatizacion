def primer_arreglo()
  # Se genra el areglo y se le pasan los valores

  arr = Array.new(7, "hola")
  # Se obtiene la longitud del arreglo
  puts arr.length
  # Se imprime el arreglo
  puts "#{arr} "


end


def segundo_arrelgo()

  arreglo = Array.new(19) { |e| e = e * 2 }
  puts "#{arreglo}"

  arrelgo2 = Array.[](1, 2, 3, 4, 5, 6, 7, 8, 9)
  puts "#{arrelgo2}"

end


segundo_arrelgo