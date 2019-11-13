require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Pages/login.rb'
require '../Assertions/assert.rb'

class TC_001 < AutomationBase # Esta clase está herednado de la clase automation_base, la cual tiene un initialize (constructor) y lo ejecuta
  def test_case_01
    login = Login.new(@@driver)

    #Verify URL
    validation = Assert.new #clase Assert
    res = validation.validateURL(@@driver, "https://www.facebook.com/")
    assert_true(res, "[Error] Home page URL does not match the expected")
    Login.enterUsrName("Muggle")
    Login.enterPwd("Humans")
    Login.clickSingIn
    sleep(5)
  end

end