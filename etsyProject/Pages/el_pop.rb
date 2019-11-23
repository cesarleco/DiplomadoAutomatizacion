require 'selenium/webdriver'


class El_Pop #Para el tc_004
  @driver
  def initialize(driver)
    @driver = driver
  end

  def getTextEP
    @driver.find_element(css: '#gnav-header-inner > div.flex-shrink-0 > nav > ul > li:nth-child(1) > button').click
  end

  def getTextBi
    @driver.find_element(css: '#join-neu-form > div:nth-child(7) > div > div:nth-child(6) > div > button').click
  end

end