require '../Pages/home_page.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Pages/login.rb'
require '../Assertions/assert.rb'

class TC_002 <TestAutomationBase

  def test_case_02
    homepage = HomePage.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.redbus.in/")
    assert_true(res, "[Error] Home page URL does not match the expected one")
    homepage.selectFrom('Greater Noida')
    homepage.selectTo('Hingoli')
    homepage.onward()
    homepage.return()
    homepage.search()
    sleep(3)
    compare = validation.compareText(homepage.getText, "Oops! No buses found.")
    assert_true(compare, "[Error] Message does not match the expected #{homepage.getText}")
    sleep(3)
  end

end
