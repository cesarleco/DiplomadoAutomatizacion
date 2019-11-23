def while_loop(variable)

  index = 0

  while (index <= 15)
    puts variable * index
    index = index + 1
  end


end

def until_loop(var)

  index = 1

  until index > 10 do

    puts var * index
    index = index + 1

  end

end


def each_loop
  (1..10).each do |index|
    puts "Valor de index ==> #{index}"
  end
end


# while_loop(3)