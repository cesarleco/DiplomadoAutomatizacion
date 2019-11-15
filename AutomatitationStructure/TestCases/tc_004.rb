require '../Pages/home_page4.rb'
require 'selenium-webdriver'
require 'test/unit'
require '../BasesFiles/automation_base.rb'
require '../Assertions/Assert.rb'
class TC_004 < TestAutomationBase
  def test_case_04
    homePage3 =  Home_page4.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.redbus.in/")
    #homePage4.selectFrom('Chennai (All Locations)')
    #homePage4.selectTo('Mumbai (All Locations)')
    #homePage4.onward()
    #homePage4.return()
    #homePage4.search()
    #compare = validation.compareText(homePage4.getText, '4 Buses')
    #assert_true(compare, '[Error] Message does not match the expected')
    sleep(5)
      end
end
