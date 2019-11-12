require './auto.rb'

class Spark




    sparkLony = Auto.new

    sparkLony.passengers("5")
    sparkLony.acelerar("90")
    sparkLony.gasoline_tank("32")


    result = sparkLony.maxSpeed
    sparkLony.acelerar(result)
  #puts result

end