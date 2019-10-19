class VariablesClase
  #Declarando una variable de clase que es visible desde cualquier parte dentro de la clase
  @@varClase1 = "Este mensaje esta dentro de una variable de clase"
  def metodoUno
    puts @@varClase1
  end
  def metodoDos
    varLocal = 10
    puts @@varClase1 + varLocal.to_s
  end
  #Llamo mi variable fuera de cualquier método
  puts @@varClase1 + " AFUERA!!!"
    def metodoTres
    @@varClase1 = "Asigno un nuevo valor a la variable de clase"
    puts @@varClase1
  end
end
objClase = VariablesClase.new
objClase.metodoUno
objClase.metodoDos
objClase.metodoTres
#Al llamar la variable de clase fuera de la clase envía error...
#puts @@varClase1