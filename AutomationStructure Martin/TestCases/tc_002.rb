require '../Pages/home_page.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'
class TC_002 < TestAutomationBase
  def test_case_02
    homePage = HomePage.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.redbus.in/")
    assert_true(res, "[Error] Home page URL does not match the expected one")
    homePage.selectFrom('Greater Noida')
    homePage.selectTo('Hingoli')
    homePage.onward()
    homePage.return()
    homePage.search()
    compare = validation.compareText(homePage.getText, 'Oops! No buses found.')
    assert_true(compare, '[Error] Message does not match the expected')
    sleep(3)
  end
end