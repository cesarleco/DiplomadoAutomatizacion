require 'selenium-webdriver'

class Login_validation_messages
  @driver
  def initialize(driver)
    @driver = driver
  end


  def email_form
    @driver.find_element(css: '#aria-join_neu_email_field-error').text
  end


  def Singing_up
    @driver.find_element(css: '#gnav-header-inner > div.flex-shrink-0 > nav > ul > li:nth-child(1) > button').click
  end
end

