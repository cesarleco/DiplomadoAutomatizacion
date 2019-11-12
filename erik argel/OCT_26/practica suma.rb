# almacenar 5 numeros en un hash con un foreach iterarlos y sumarlos imprimir el resultado de la suma
#

#hashValores=Hash.new


#hashValores["valor1"] = "100"
#hashValores["valor2"] = "289"
#hashValores["valor3"] = "500"
#hashValores["valor4"] = "10"
#hashValores["valor5"] = "1090"

#for.each_key { |hashValores|  }

#end




listaHash = {"num_1"=>23, "num_2"=>54, "num_3"=>56, "num_4"=>67, "num_5"=>34}
sum = 0
listaHash.each do |k,v|
  puts sum += v
end