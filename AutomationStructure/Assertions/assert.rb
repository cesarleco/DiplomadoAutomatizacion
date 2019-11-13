class Assert

  def validateURL(driver, expectedUrl) #Recibe dos parámetros, recibe el driver chrome, invoca al método current_url
    result = false
    if(driver.current_url().eql?(expectedUrl)) #Resutado esperado, resultado obtenido
      result = true
    end

    return result

  end

  def compareText(text, expected) #Comparar dos textos
    result = false
    if(text.eql?(expected))
      result = true
    end

    return result

  end

end