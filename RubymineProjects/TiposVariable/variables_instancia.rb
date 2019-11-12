require './variables_globales.rb'


class VariablesInstancia
  def instancias(val1,val2)
    @inst1 = val1 * val2
    puts @inst1
  end

  def instanciasDos
     puts @inst1
  end

  def instanciaTres
    resul = @inst1 + @inst1
    puts resul

    puts $variableGlobal1

    puts $variableGlobal2

  end

end

#LLamado de clase...

inst = VariablesInstancia.new
inst.instancias(10,20)
inst.instanciasDos
inst.instanciaTres
