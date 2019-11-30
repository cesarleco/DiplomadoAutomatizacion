require 'selenium-webdriver'
require 'test-unit'
require '../BasesFiles/automation_base.rb'
require '../Pages/carr.rb'
require '../Assertions/assert.rb'


class Test_case03 < TestAutomationBase
  def test_case_003 #Carrito de compra
    menu = Carr.new(@@driver)

    val = Assert.new
    res = val.validateURL(@@driver, 'https://www.etsy.com/')
    assert_true(res, '[Error] Message does not match the expected')
    sleep(5)

    menu.getTextC()
    sleep(5)

    compare = val.compareText(menu.getTextV, 'Tu carro está vacío.')
    assert_true(compare, '[Error] Message does not match the expected')

    res = val.compareText(@@driver.title, 'Etsy - Carro de la compra')
    assert(res, "[Error] Message does not match the expected")
    sleep(5)

  end
end
