require './puntotres.rb'
require './puntouno.rb'
require './punto2.rb'
require './nombres.rb'

class Operaciones

  instancia = Puntotres.new()

  Puntotres.modulo
  Puntotres.potencia

  oper1= Puntouno.new()
  oper1.multiplicacion
  oper1.division

  oper2=Punto2.new()
  res = oper2.suma
  oper2.resta(res)

  nombr=Nombres.new()


end