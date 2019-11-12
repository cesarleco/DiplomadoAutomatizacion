require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Pages/login.rb'
require '../Assention/assert.rb'

class TC_001 < TestAutomationBase

  def test_case_01
    login = Login.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.facebook.com/")
    assert_true(res, "[Error] Home page URL does not match the expected")
    login.enterUsrName("sedipo1@hotmail.com")
    login.enterPwd("9876543210")
    login.clickSignIn()
    sleep(5)
  end



end