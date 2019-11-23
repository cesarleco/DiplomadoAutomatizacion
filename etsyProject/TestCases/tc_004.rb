require 'selenium-webdriver'
require 'test-unit'
require '../BasesFiles/automation_base.rb'
require '../Pages/el_pop.rb'
require '../Assertions/assert.rb'

class TC_004 < AutomationBase
  def test_case_004 #Pop up inicio de sesión

    menu = El_Pop.new(@@driver)
    val = Assert.new
    res = val.validateURL(@@driver, 'https://www.etsy.com/')
    assert_true(res, '[Error] Message does not match the expected')
    sleep(5)

    menu.getTextEP()
    sleep(5)

    menu.getTextBi()
    sleep(5)

  end


end