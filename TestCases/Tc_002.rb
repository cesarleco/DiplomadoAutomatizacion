require '..Pages/home_page'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base'
require '../Pages/Login'
require '../Assertions/assert.rb'


class Tc_002 < TestAtomationBase

  def test_case_02

    home_page = HomePage.new(@driver)
    validation = Assert.new
    res = validation.validate_url(@driver, "https://www.redbus.in/")
    assert_true(res, "[Error] Home page URL does not match the expected one")
    home_page.select_from('Greater Noida')
    home_page.select_to('Higoli')
    home_page.onward
    home_page.return
    home_page.search
    compare = validation.compare_text(homePage.getTest, 'Oops! No buses found.')
    assert_true(compare, '[Error] Home page URL does not match the expected')
    sleep 3

  end


end