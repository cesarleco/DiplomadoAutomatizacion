class Assert #Esperado vs el obtenido
  def validateURL(driver, expectedURL) #Compara la url
    result = false
    if(driver.current_url().eql?(expectedURL))
    result = true
    end
    return result
  end

  def compareText(text, expected) #Compara texto #text es obtenido expected es el esperado
    result = false
    if (text.eql?(expected))
      result = true
    end
    return result
  end

  end