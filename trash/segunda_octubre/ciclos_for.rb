def primer_for()

  puts "Example for"
  for index in 1..10
    puts index
  end
end

def example_each()

  puts "Example Each"
  (1...10).each do |index|
    puts index
  end
end

def use_brake(num)

  for index in 1..10
    if index * num % 5 == 0
      puts "La condicion se cumplió #{index} y #{index * num}"
      break

    end
    puts "La condicino aun no se cumple #{index}"
  end

end

use_brake(7)