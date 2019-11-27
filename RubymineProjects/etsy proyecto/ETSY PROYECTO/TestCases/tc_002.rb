require '../Pages/home_page.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base'
require '../Assention/assert'

class TC_002 < TestAutomationBase
  def test_case_02

    homePage = HomePage.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.etsy.com/")
    assert_true(res, "[Error] Home page URL does not match the expected one")
    homePage.busqueda("anillo")
    homePage.search()
    homePage.primResult()
    sleep(5)
    #compare = validation.compareText(homePage.getText, 'Oops! No buses found.')
    #assert_true(compare, '[Error] Message does not m'TC_002.test_case_02' message = 'NoMethodError: undefined method `send_keys|' for #<Array:0x0000000005fd4f58>' detailatch the expected')
    #sleep(3)

  end
end