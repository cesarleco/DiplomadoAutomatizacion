require 'selenium-webdriver'
require 'test-unit'
require '../BasesFiles/automation_base.rb'
require '../Pages/search_page.rb'
require '../Assertions/assert.rb'

class TC_002 < AutomationBase
  def test_case_002 #buscador anillo
    menu = Search_Page.new(@@driver)
    val = Assert.new
    res = val.validateURL(@@driver, 'https://www.etsy.com/')
    assert_true(res, '[Error] Message does not match the expected')
    sleep(5)

    menu.search('anillos')
    sleep(5)

    compare = val.compareText(menu.getTextAnillo, 'Twisted Engagement Ring - Nature Inspired White Sapphire Twig Ring in Yellow Gold, White Gold, Rose Gold or Platinum')
    assert_true(compare, '[Error] Message does not match the expected')

  end

end