require '../Pages/home_page3.rb'
require 'selenium-webdriver'
require 'test/unit'
require '../BasesFiles/automation_base.rb'
require '../Assertions/Assert.rb'
class TC_003 < TestAutomationBase
  def test_case_03
    homePage3 =  Home_page3.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.redbus.in/")
    homePage3.selectFrom('Chennai (All Locations)')
    homePage3.selectTo('Mumbai (All Locations)')
    homePage3.onward()
    homePage3.return()
    homePage3.search()
    compare = validation.compareText(homePage3.getText, '4 Buses')
    assert_true(compare, '[Error] Message does not match the expected')
    sleep(5)
      end
end
