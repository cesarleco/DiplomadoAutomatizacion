class Assert
  def validateURL(driver,expectedURL)
    result =false
    if(driver.current_url().eql?(expectedURL))
      result=true
    end
    return result
  end

  def compareText (text,expected)
    result = false
    if (text.eql?(expected))
      result  =true
    end
    return result
  end
  def compareBus(textBus,expectedBus)
    result1= false
    if(textBus.eql?(expectedBus))
      result1=true
    end
    return result1
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
  def compareNod1(textNod1,expectedNod1)
    resultNod1= false
    if(textNod1.eql?(expectedNod1))
      resultNod1=true
    end
    return resultNod1
  end
  def compareNod2(textNod2,expectedNod2)
    resultNod2= false
    if(textNod2.eql?(expectedNod2))
      resultNod2=true
    end
    return resultNod2
  end
  def compareNod3(textNod3,expectedNod3)
    resultNod3= false
    if(textNod3.eql?(expectedNod3))
      resultNod3=true
    end
    return resultNod3
  end
  def compareNod4(textNod4,expectedNod4)
    resultNod4= false
    if(textNod4.eql?(expectedNod4))
      resultNod4=true
    end
    return resultNod4
  end
  def compareNod5(textNod5,expectedNod5)
    resultNod5= false
    if(textNod5.eql?(expectedNod5))
      resultNod5=true
    end
    return resultNod5
  end
  def compareNod6(textNod6,expectedNod6)
    resultNod6= false
    if(textNod6.eql?(expectedNod6))
      resultNod6=true
    end
    return resultNod6
  end
end
