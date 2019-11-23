require 'selenium-webdriver'
require 'test-unit'
require '../BasesFiles/automation_base.rb'
require '../Pages/home_page.rb'
require '../Assertions/assert.rb'

class TC_001 < AutomationBase
  def test_case_01
    menu = Home_Page.new(@@driver)
    #Verify URL
    val = Assert.new
    data_hash = JSON.parse(@@file)

    res = val.validateURL(@@driver, 'https://www.etsy.com/')
    assert_true(res, '[Error] Message does not match the expected')
    sleep(5)

    res = val.compareText(@@driver.title, 'Etsy - Compra regalos hechos a mano, vintage, personalizados y únicos para todo el mundo')
    assert(res, "[Error] Message does not match the expected")
    sleep(5)

    compare = val.compareText(menu.getText, 'Si está hecho a mano o es vintage, personalizado o único, está en Etsy.')
    assert_true(compare, '[Error] Message does not match the expected')

    compare = val.compareText(menu.getText2, 'Las joyas personalizadas brillan más.')
    assert_true(compare, '[Error] Message does not match the expected')

    compare = val.compareText(menu.getText3, 'Artículos únicos')
    assert_true(compare, '[Error] Message does not match the expected')

    compare = val.compareText(menu.getText4(), data_hash['vendedores'])
    assert_true(compare, '[Error] Message does not match the expected')

    compare = val.compareText(menu.getText5(), data_hash['compras'])
    assert_true(compare, '[Error] Message does not match the expected')

  end

end