class CiclosWhile
  #while: mientras la condicon se cumpla ejecuta
  def whileLoop(variable)
    index = 1
    while(index <= 15)
      puts variable * index
      index = index + 1
    end
  end
  def untilLoop(var)
    index = 1
    until  index > 10 do
      puts var * index
      index = index + 1
    end
  end

  def eachLoop
    (1..10).each do |i|
      puts "Valor de i ==> #{i}"
    end
  end
end
