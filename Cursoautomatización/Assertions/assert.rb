class Assert

  def validateURL(driver, expectedUrl)
    result = false
    if (driver.current_url().eql?(expectedUrl))
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
  def compareBus(textBus, expectedBus)
    result = false
    if (textBus.eql?(expectedBus))
      result = true
    end
    return result
  end
  def compareTit1(textTit1,expectedTit1)
    result2= false
    if(textTit1.eql?(expectedTit1))
      result2=true
    end
    return result2
  end
  def compareTit2(textTit2,expectedTit2)
    result3= false
    if(textTit2.eql?(expectedTit2))
      result3=true
    end
    return result3
  end
  def compareDep1(textDep1,expectedDep1)
    resultDep1= false
    if(textDep1.eql?(expectedDep1))
      resultDep1=true
    end
    return resultDep1
  end
  def compareArr1(textArr1,expectedArr1)
    resultArr1= false
    if(textArr1.eql?(expectedArr1))
      resultArr1=true
    end
    return resultArr1
  end
  def compareDep2(textDep2,expectedDep2)
    resultDep2= false
    if(textDep2.eql?(expectedDep2))
      resultDep2=true
    end
    return resultDep2
  end
  def compareArr2(textArr2,expectedArr2)
    resultArr2= false
    if(textArr2.eql?(expectedArr2))
      resultArr2=true
    end
    return resultArr2
  end

  def compareNodo1(textNodo1,expectedNodo1)
    resultNodo1= false
    if(textNodo1.eql?(expectedNodo1))
      resultNodo1=true
    end
    return resultNodo1
  end
  def compareNodo2(textNodo2,expectedNodo2)
    resultNodo2= false
    if(textNodo2.eql?(expectedNodo2))
      resultNodo2=true
    end
    return resultNodo2
  end
  def compareNodo3(textNodo3,expectedNodo3)
    resultNodo3= false
    if(textNodo3.eql?(expectedNodo3))
      resultNodo3=true
    end
    return resultNodo3
  end
  def compareNodo4(textNodo4,expectedNodo4)
    resultNodo4= false
    if(textNodo4.eql?(expectedNodo4))
      resultNodo4=true
    end
    return resultNodo4
  end
  def compareNodo5(textNodo5,expectedNodo5)
    resultNodo5= false
    if(textNodo5.eql?(expectedNodo5))
      resultNodo5=true
    end
    return resultNodo5
  end
  def compareNodo6(textNodo6,expectedNodo6)
    resultNodo6= false
    if(textNodo6.eql?(expectedNodo6))
      resultNodo6=true
    end
    return resultNodo6
  end

end