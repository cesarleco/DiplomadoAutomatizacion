require 'selenium-webdriver'
class Login
  @chromedriver
  def initialize(driver)
    @chromedriver = driver
  end
  def search(anillo)
    @driver.find_element(:id, 'global-enhancements-search-query').send_keys(anillo)
    @driver.find_element(css:'#gnav-search > div > div.wt-input-btn-group.global-enhancements-search-input-btn-group.wt-menu__trigger > button > span > svg').click
  end

end
