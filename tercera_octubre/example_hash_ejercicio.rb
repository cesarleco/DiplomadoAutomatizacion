def example_num_hash
# 2. Almacenar 5 números en un hash, con un foreach iterarlos y sumarlos. Al final imprimir el resultado de la suma

  num_hash = {

      num_0: 0,
      num_1: 1,
      num_2: 2,
      num_3: 3,
      num_4: 4,

  }

  sum = 0
  num_hash.each do |key, value|

    puts sum += value


  end
end

example_num_hash