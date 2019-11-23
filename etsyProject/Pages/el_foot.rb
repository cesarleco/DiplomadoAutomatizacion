require 'selenium/webdriver'


class El_Foot #Para el tc_005, seleccionar links del footer
  @driver
  def initialize(driver)
    @driver = driver
  end

  def
    getTextTR #Tarjetas Regalo
    @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(1) > ul > li:nth-child(1) > a > span').click
  end

  def getTextTR1
    @driver.find_element(css:'#content > div > div.hero.pl-xs-4.pr-xs-4 > div > div > p.text-body-largest.mt-xs-1').text
  end

  def getTextVn #Ventas en Etsy
    @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(2) > ul > li:nth-child(1) > a > span').click
  end

end