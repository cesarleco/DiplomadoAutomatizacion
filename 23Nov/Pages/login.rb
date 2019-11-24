require 'selenium-webdriver'
class Login
  @driver
  def initialize(driver)
    @driver = driver
  end

  def popUp
    @driver.find_element(css:'#gnav-header-inner > div.flex-shrink-0 > nav > ul > li:nth-child(1) > button').click
  end

  def btnClick()
    @driver.find_element(css:'#join-neu-form > div:nth-child(7) > div > div:nth-child(6) > div > button').click
  end

  def menValUno()
    @driver.find_element(css:'#aria-join_neu_email_field-error').text
  end
  def menValDos()
    @driver.find_element(css:'#aria-join_neu_password_field-error').text
  end

end