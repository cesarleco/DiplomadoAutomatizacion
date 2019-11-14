require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Pages/login.rb'
require '../Assertions/assert.rb'

class TC_001 < TestAutomationBase

  def test_case_01
    login = Login.new(@@driver)
    #verify URL
    validation = Assert.new
    res = validation.validateURL(@@driver, 'https://www.facebook.com/')
    assert_true(res, "[Error] Home page URL does not match the expected")
    login.enterUsrName("Hello")
    login.enterPwd("Kitty")
    login.clickSingIn()
    sleep(5)
  end

end