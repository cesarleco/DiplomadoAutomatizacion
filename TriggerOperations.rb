require_relative 'SumaResta'
require_relative 'ModPot'

class TriggerOperations

  puts "Ingresa el primer valor "
  val1 = gets.to_i
  puts "Ingresa el segundo valor"
  val2 = gets.to_i


  # op = SumaResta.new
  # op.suma(val1, val2)
  # op.resta(val1, val2)


  ModPot.potencia(val1, val2)

end
