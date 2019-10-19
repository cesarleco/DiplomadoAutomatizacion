class CiclosFor

  def primerFor
    #Este for itera incluyendo el último número de ciclo '10'
    for i in 1..10
      puts i
    end
    #Este for itera excluyendo el útlimo valor del ciclo '10'
    for j in 1...10
      puts j
    end
  end

  def useBreak(num)
    for i in 1..10
      if(i * num % 5 == 0)
        puts "La condicion se cumplio #{i} y #{i*num}"
        break
      end
      puts "La condición aun no se cumple #{i}"
    end
  end


  def nextFor(num)
    for i in 1..10
      if(i * num % 5 == 0)
        next
      end
      puts i * num
      puts "La condición aún no se cumple #{i}"
    end
  end
  def redoFor(num)
    for i in 1..10
      if (i * num % 5 == 0)
        puts "Este mensaje no termina de enviarse..."
        redo
      end
      puts 'La condición no se ha cumplido'
    end
  end

  end






