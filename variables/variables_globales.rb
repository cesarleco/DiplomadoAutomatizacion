#Fuera de la clase
$variableGlobal2 = 999

#Empieza mi clase
class VariablesGlobales
  $variableGlobal1 = "Variable de tipo global"

  def imprimirMsg
    puts $variableGlobal1
    puts $variableGlobal2
  end
end
#Termina mi clase
global = VariablesGlobales.new
#global.imprimirMsg
