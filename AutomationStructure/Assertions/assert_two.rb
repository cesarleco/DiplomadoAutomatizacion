class Assert_two

  def compareText(text, expected) #Comprar dos textos
    result = false
    if(text.eql?(expected))
      result = true
    end

    return result

  end

end