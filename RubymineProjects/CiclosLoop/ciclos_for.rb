class CiclosFor

  def primerFor
    #Este for intera incluyendo el ultimo numero de ciclo ´10´
  for i in 1..10
    puts i
  end

  #Este for intera excluyendo el ultimo numero de ciclo ´10´
  for j in 1...10
    puts j
  end
  end

  def useBreak(num)
    for i in 1..10
       if (i * num % 5 == 0)
         puts "La condicion se cumplio #{i} y #{i*num}"
         break
       end
      puts "La condicion no se cumple #{i}"
    end
  end

def nextfor(num)
  for i in 1..10
    if(i * num % 5 == 0)
      next
    end
    puts i * num
    puts "La consola aun no se cumple #{i}"
  end
end

  def redoFor(num)
    for i in 1..10
      if (i * num % 5 == 0)
        puts "Este mensaje no termina de enviarse.."
        redo
        #redo:volver a ejecutar
      end
      puts "La consola no se completa"
    end
  end


end