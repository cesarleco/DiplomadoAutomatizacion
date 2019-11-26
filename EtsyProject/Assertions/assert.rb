class Assert

  def validateURL(driver,expectedUrl)
    result = false
    if (driver.current_url().eql?(expectedUrl))
      result= true
    end
    return result
  end

  def compareText(text,expected)
    result = false
    if (text.eql?(expected))
      result =true
    end
    return result
  end

  def verifySubstring(subString, stringValue)
    result = false
    if(stringValue.include? subString)
      result = true
    end
    return result
  end

end