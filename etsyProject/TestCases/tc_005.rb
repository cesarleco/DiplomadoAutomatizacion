require 'selenium/webdriver'
require 'test-unit'
require '../BasesFiles/automation_base.rb'
require '../Pages/el_foot.rb'
require '../Assertions/assert.rb'

class TC_005 < AutomationBase
  def test_case_004 #Footer

    menu = El_Foot.new(@@driver)
    val = Assert.new
    res = val.validateURL(@@driver, 'https://www.etsy.com/')
    assert_true(res, '[Error] Message does not match the expected')
    sleep(5)

    menu.getTextTR() #método para mandar llamar el footer Tarjetas Regalo
    sleep(5)
    res = val.compareText(@@driver.title, 'Etsy - Tarjetas regalo') #valida title de la seccion
    assert(res, "[Error] Message does not match the expected")
    sleep(5)
    compare = val.compareText(menu.getTextTR1, 'Deja que tus amigos hagan lo que mejor se les da.') #valida texto
    assert_true(compare, '[Error] Message does not match the expected')

    menu.getTextVn() #footer Vender en Etsy
    sleep(5)
    res = val.compareText(@@driver.title, 'Hay millones de compradores impacientes por ver lo que pondrás a la venta')
    assert(res, "[Error] Message does not match the expected")
    sleep(5)

    end


end
