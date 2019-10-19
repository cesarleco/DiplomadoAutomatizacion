class CiclosWhile

  def whileLoop(variable)
    i = 1
    while(i <= 15)
      puts variable * i
      i = i + 1
    end
  end

  def untilLoop(var)
    i = 1
    until i > 10 do
      puts var * i
      i = i + 1
    end
  end

  def eachLoop
    (1..10).each do |i|
      puts "Valor de i ==> #{i}"
    end
  end


end