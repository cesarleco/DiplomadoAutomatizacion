require '../Pages/carrito.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'

class TC_003 < TestAutomationBase
  def test_case_003
    carrittodos = Carrito.new(@@driver)
    validation = Assert.new

   carrittodos.shop()
    res = validation.compareText(@@driver.title, 'Etsy - Carro de la compra')
    assert_true(res, "[Error] Home page URL does not match the expected one")
    sleep(5)
  end
end