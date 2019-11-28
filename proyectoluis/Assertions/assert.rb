class Assert
  def validateURL(driver,expectedURL)
    result =false
    if(driver.current_url().eql?(expectedURL))
      result=true
    end
    return result
  end

  def compareText (text,expected)
    result1 = false
    if (text.eql?(expected))
      result1=true
    end
    return result1
  end
end
