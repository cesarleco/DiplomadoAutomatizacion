require '../Pages/home_page.rb'
require 'selenium-webdriver'
require 'test/unit'
require '../BasesFiles/automation_base.rb'
require '../Assertions/Assert.rb'
class TC_002 < TestAutomationBase
  def test_case_02
    homePage =  Home_page.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.redbus.in/")
    assert_true(res,"[Error] Home page URL does not match the expected one")
    homePage.selectFrom('Greater Noida')
    homePage.selectTo('Hingoli')
    homePage.onward()
    homePage.return()
    homePage.search()
    compare = validation.compareText(homePage.getText, 'Oops! No buses found.')
    assert_true(compare, '[Error] Message does not match the expected')
    sleep(20)
  end
end
