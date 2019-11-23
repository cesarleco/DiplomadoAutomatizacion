class Assert

  def validateURL(driver, expectedUrl)
    result = false
    #En driver.current_url() se guarda el nombre de la pagina en la que se esta navegando
    #En expectedUrl se guarda la URL esperada que se declara deacuerdo a la necedidad el usuario
    #eql? es una funcion para compara dos valores
    if(driver.current_url().eql?(expectedUrl))
      result = true
    end
      return result
  end

  def compareText(text, expected)
    resutl = false
    if (text.eql?(expected))
      result = true
    end
    return result
  end

end
