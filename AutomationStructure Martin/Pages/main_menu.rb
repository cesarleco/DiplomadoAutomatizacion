require 'selenium-webdriver'
class MainMenu

  @chromedriver
  def initialize(driver)
    @chromedriver = driver
  end

  def redBusLogo()
    @chromedriver.find_element(css: '#rh_header > div > div > a').click()
  end


end