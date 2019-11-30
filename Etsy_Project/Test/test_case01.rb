require 'selenium-webdriver'
require 'test-unit'
require '../BasesFiles/automation_base.rb'
require '../Pages/home_page.rb'
require '../Assertions/assert.rb'

class Test_case01 < TestAutomationBase
  def test_case_01
    homePage = Home_page.new(@@driver)
    val = Assert.new
    #data_hash = JSON.parse(@@file)

    res = val.validateURL(@@driver, 'https://www.etsy.com/mx')
    assert_true(res, '[Error] Message does not match the expected')
    sleep(5)

    res = val.compareText(@@driver.title, 'Etsy - Compra regalos hechos a mano, vintage, personalizados y únicos para todo el mundo')
    assert(res, "[Error] Message does not match the expected")
    sleep(5)

    compare1 = val.compareText(homePage.getTextVintage, 'Si está hecho a mano o es vintage, personalizado o único, está en Etsy.')
    assert_true(compare1, '[Error] Message does not match the expected')
    compare2 = val.compareText(homePage.getTextJoyas, 'Las joyas personalizadas brillan más.')
    assert_true(compare2, '[Error] Message does not match the expected')
    compare3 = val.compareText(homePage.getTextUnico, 'Artículos únicos')
    assert_true(compare3, '[Error] Message does not match the expected')
    compare4 = val.compareText(homePage.getTextVendedores(), data_hash['vendedores'])
    assert_true(compare4, '[Error] Message does not match the expected')
    compare5 = val.compareText(homePage.getTextCompraSeg(),data_hash['compras'])
    assert_true(compare5, '[Error] Message does not match the expected')
  end
end