class VariablesClasse
  #Declarar una variable de clase que es visible desde cualquier parte dentro de la clase
  @@varClase1 = "Este mensaje esta dentro de una variable desde clase "

  def metodoUno
    puts @@varClase1
  end
  def metodoDos
    varLocal = 10
    puts @@varClase1 + varLocal.to_s
  end

  #Llamo mi variable fuera de cualquier metodo
  puts@@varClase1 + "FUERA"

  def metodoTres
    @@varClase1 = "Asigno un nuevo valor a la variable de clase"
    puts @@varClase1
  end
end

clase = VariablesClasse.new
clase.metodoUno
clase.metodoDos
clase.metodoTres