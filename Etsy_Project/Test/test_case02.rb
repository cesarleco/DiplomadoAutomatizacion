require 'selenium-webdriver'
require 'test-unit'
require '../BasesFiles/automation_base.rb'
require '../Pages/home_page.rb'
require '../Assertions/assert.rb'

class Test_case02 < TestAutomationBase
  def test_case_002 #buscador anillo
    anillo = home_page2.new(@@driver)
    val = Assert.new
    res = val.validateURL(@@driver, 'https://www.etsy.com/')
    assert_true(res, '[Error] Message does not match the expected')
    sleep(15)

    anillo.search('anillos')
    sleep(15)

    compare = val.compareText(menu.getTextanillo, 'Twisted Engagement Ring - Nature Inspired White Sapphire Twig Ring in Yellow Gold, White Gold, Rose Gold or Platinum')
    assert_true(compare, '[Error] Message does not match the expected')

  end

end