require 'selenium-webdriver'

class Carr #Para el tc_003
  @driver
  def initialize(driver)
    @driver = driver
  end
  def getTextC
    @driver.find_element(css: '#gnav-header-inner > div.flex-shrink-0 > nav > ul > li:nth-child(2) > span > a > span.etsy-icon > svg > circle:nth-child(2)').click
  end

  def getTextV
    @driver.find_element(css: '#newempty > div > div > div').text
  end


end