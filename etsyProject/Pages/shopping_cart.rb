require 'selenium-webdriver'

class Shopping_cart
  @driver
  def initialize(driver)
    @driver = driver
  end

  def shop
    @driver.find_element(css: '#gnav-header-inner > div.flex-shrink-0 > nav > ul > li:nth-child(2) > span > a > span.etsy-icon > svg').click
  end

  def getText
    @driver.find_element(css: '#newempty > div > div > div').text
  end

end