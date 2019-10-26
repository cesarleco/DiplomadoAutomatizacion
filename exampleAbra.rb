# Ejercicio de Exponenciación
class ModPoten
  def self.Pot_1
    puts "Voy a elevar el numero que me indiques a la pontencia :"
    valor1 = gets.chomp.to_f
    puts "cual seria la potencia:"
    valor2 = gets.chomp.to_f
    elevado = valor1 ** valor2
    puts "#{valor1} ^ #{valor2} = #{elevado}"
    chomp
  end

  def self.Mod_dos
    puts "Method_2"
  end

  self.Pot_1
end
