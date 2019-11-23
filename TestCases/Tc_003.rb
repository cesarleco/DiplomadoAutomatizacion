require '../Pages/CalendarPage'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base'
require '../Pages/Login'
require '../Assertions/assert.rb'


class Tc_003 < TestAutomationBase

  def test_case_01

    home_page = CalendarPage.new(@@driver)
    validation = Assert.new
    res = validation.validate_url(@@driver, "https://www.redbus.in/")
    assert_true(res, "[Error] Home page URL does not match the expected one")
    home_page.select_from('Chennai')
    home_page.select_to('Mumbai')
    home_page.onward_date
    home_page.return_date
    home_page.search
    compare = validation.compare_text(homePage.getTest, 'Oops! No buses found.')
    assert_true(compare, '[Error] Home page URL does not match the expected')
    sleep 3

  end


end