require 'selenium-webdriver'
class Carrito
  @driver
  def initialize(driver)
    @driver = driver
  end
  def shop()
    @driver.find_element(css: '#gnav-header-inner > div.flex-shrink-0 > nav > ul > li:nth-child(2) > span > a > span.etsy-icon > svg > path').click
  end

end