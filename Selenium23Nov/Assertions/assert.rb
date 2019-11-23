class Assert
  def validateURL(driver, expectedUrl)
    result = false
    if(driver.current_url().eql?(expectedUrl))
      result = true
    end
    return result
  end

  def compareText(text, expected)
    result = false
    if(text.eql?(expected))
      result = true
      puts "Item validated successfully #{expected}"
    else
      puts "Item not validated succesfully #{expected}"
    end
    return result
  end

end