class VariablesLocales

  def locales
    var1 = 5 + 250
    var2 = "Buenos dias integrantes del Diplomado"
    var3 = 'Buenos dias señor SOL!!'

    puts var1
    puts var2
    puts var3

    var4 = "El resultado de la suma es: "+ var1.to_s
    puts var4

    var5 = "El resultado de la suma es:  #{var1}"
    puts var5

  end

  def otrasVariables
    puts var1
  end

end

Variables = VariablesLocales.new

Variables.locales