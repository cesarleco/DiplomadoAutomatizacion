class Assert

  def validateURL(driver, expectUrl)
    result = false
    if (driver.current_url().eql?(expectUrl))
      result = true
    end
    return result
  end

  def compareText(text, expected)
    result = false
    if (text.eql?(expected))
      result = true
    end
    return result
  end


end