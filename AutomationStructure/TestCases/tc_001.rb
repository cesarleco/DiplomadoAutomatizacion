require 'selenium-webdriver'
require 'test-unit'
require '../BasesFiles/automation_base.rb'
require '../Pages/login.rb'
require '../Assertions/assert.rb'

class TC_001 < AutomationBase
  def test_case_01
    login = Login.new(@@driver)
    #Verify URL
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.facebook.com/")
    assert_true(res, "[Error] Home page URL does not math the expected")
    login.enterUsrName("Hello")
    login.enterPwd("Kitty")
    login.clickSignIn()
    sleep(5)
  end
end