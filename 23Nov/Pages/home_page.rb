require 'selenium-webdriver'
class HomePage
  @driver
  def initialize(driver)
    @driver = driver
  end
  def textUno()
    @driver.find_element(css: '#content > div:nth-child(1) > div > h1').text
  end
  def textDos()
    @driver.find_element(css: '#content > div.col-group.body-max-width > div > div > a > div > h1').text
  end
  def textTres()
    @driver.find_element(css: '#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(1) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end
  def textCuatro()
    @driver.find_element(css: '#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(2) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end
  def textCinco()
    @driver.find_element(css: '#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(3) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end
end