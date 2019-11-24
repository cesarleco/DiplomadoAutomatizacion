require 'selenium-webdriver'

class Home_page
  @driver
  def initialize(driver)
    @driver = driver
  end

  def getText
    @driver.find_element(css: '#content > div:nth-child(1) > div > h1').text
  end

  def getTextTwo
    @driver.find_element(css: '#content > div.col-group.body-max-width > div > div > a > div > h1').text
  end


  def getTextThree
    @driver.find_element(css: '#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(1) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end

  def getTextFour
    @driver.find_element(css: '#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(2) > div > div.col-group > div > h3').text
  end


  def getTextFive
    @driver.find_element(css: '#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(3) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end


end