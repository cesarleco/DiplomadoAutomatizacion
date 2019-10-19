require './variables_globales.rb'

class VariablesInstancia

  def instancias(val1, val2)
    #Para declarar una variable de instancia agrego el símbolo @
    # Esto me permite compartir una variable entre diferentes métodos
    @inst1 = val1 * val2
    puts @inst1
  end

  def instanciasDos
    puts @inst1
  end

  def instanciasTres
    resultado = @inst1 + @inst1
    puts resultado
    #Mando imprimir la variable global que se encuentra en VariablesGlobales
    puts $variableGlobal1
    #Imprimiendo la variable global fuera de la clase VariablesGlobales
    puts $variableGlobal2
  end
end

#LLamado de la clase...
objInst = VariablesInstancia.new
objInst.instancias(10, 20)
objInst.instanciasDos
objInst.instanciasTres
