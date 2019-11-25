require '../Pages/main_menu.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'
class TC_003 < TestAutomationBase
  def test_case_03()
    menu = MainMenu.new(@@driver)
    val = Assert.new
    menu.redBusLogo()
    res = val.compareText(@@driver.title, 'Book Bus Travels, AC Volvo Bus, Hotels & Bus Hire - redBus.in')
    assert_true(res, '[Error] Message does not match the expected')
    sleep(3)
  end

  def test_case_04()
    menu = MainMenu.new(@@driver)
    val = Assert.new
    menu.redBusLogo()
    res = val.compareText(@@driver.title, 'Book Bus Travels, AC Volvo Bus, Hotels & Bus Hire - redBus.in')
    assert_true(res, '[Error] Message does not match the expected')
    sleep(3)
  end
end