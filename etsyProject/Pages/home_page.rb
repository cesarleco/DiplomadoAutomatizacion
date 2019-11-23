require 'selenium-webdriver'

class Home_Page #Para el tc_001
  @driver
  def initialize(driver)
    @driver = driver
  end


  def getText
    @driver.find_element(css: '#content > div:nth-child(1) > div > h1').text
  end

  def getText2
    @driver.find_element(css: '#content > div.col-group.body-max-width > div > div > a > div > h1').text
  end

  def getText3
    @driver.find_element(css: '#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(1) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end

  def getText4
    @driver.find_element(css: '#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(2) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end

  def getText5
    @driver.find_element(css: '#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(3) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end


end