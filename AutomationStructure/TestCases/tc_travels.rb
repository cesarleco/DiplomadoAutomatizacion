require '../Pages/home_page_travels'
require 'selenium-webdriver'
require 'test-unit'
require '../BasesFiles/automation_base.rb'
require '../Assertions/assert.rb'

class TC_Travels < AutomationBase
  def test_case_ejercicio
    homePage_Travels = Home_Page_Travels.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.redbus.in/")
    assert_true(res, "[Error] Home page URL does not match the expected one")
    homePage_Travels.selectFrom('Chennai')
    homePage_Travels.selectTo('Mumbai')
    homePage_Travels.onward()
    homePage_Travels.return()
    homePage_Travels.search()
    compare = validation.compareText(homePage_Travels.getText3, 'Volvo Multi-Axle I-Shift B11R Semi Sleeper  (2+2)')
    assert_true(compare, '[Error] Message does not match the expected')
    sleep(5)
  end

end