def example_num_hash
# 2. Almacenar 5 números en un hash, con un foreach iterarlos y sumarlos. Al final imprimir el resultado de la suma

  num_hash = {

      num_1: 1,
      num_0: 0,
      num_2: 2,
      num_3: 3,
      num_4: 4,
      num_6: 6,
      num_5: 5,

  }

  num_hash.sort
  puts num_hash.sort.min
  puts num_hash.sort.max

end

example_num_hash