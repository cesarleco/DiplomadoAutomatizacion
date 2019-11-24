require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Pages/shopping_cart.rb'
require '../Assertions/assert.rb'

class TC_003 < AutomationBase # Esta clase está herednado de la clase automation_base, la cual tiene un initialize (constructor) y lo ejecuta
  def test_case_03
    basket = Shopping_cart.new(@@driver)

    #Verify URL
    validation = Assert.new #clase Assert
    res = validation.validateURL(@@driver, "https://www.etsy.com/")
    assert_true(res, "[Error] Home page URL does not match the expected")

    basket.shop

    compare = validation.compareText(basket.getText, 'Your cart is empty.')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(2)


    compare = validation.compareText(@@driver.title, 'Etsy - Shopping Cart')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)

  end

end