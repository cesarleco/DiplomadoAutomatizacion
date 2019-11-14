require '../Pages/homepage.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'

class TC_002 < TestAutomationBase
  def test_case_02
    homePage = HomePage.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.redbus.in/")
    assert_true(res, "[Error] Home page does nor match the expected one")
    homePage.selectFrom('Greater Noida')
    homePage.selectTo('Hingoli')
    homePage.onward()
    homePage.return()
    homePage.search()
    sleep(7)
    compare = validation.compareText(homePage.getText(), 'Oops! No buses found.')
    assert_true(compare, "[Error] Message does not match the expected. #{homePage.getText()}")
    sleep(5)
  end
end