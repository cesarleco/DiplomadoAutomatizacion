require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Pages/home_page.rb'
require '../Assention/assert.rb'

class TC_001 < TestAutomationBase

  def test_case_01
    homePage = HomePage.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.etsy.com/")
    assert_true(res, "[Error] Home page URL does not match the expected one ")

    compare = validation.compareText(homePage.getTex, 'Si está hecho a mano o es vintage, personalizado o único, está en Etsy.')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.getTex}")
    sleep(3)

    compare = validation.compareText(homePage.getTest, 'Las joyas personalizadas brillan más.')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.getTest}")
    sleep(3)

    compare = validation.compareText(homePage.getTex1, 'Artículos únicos')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.getTex1}")
    sleep(3)

    compare = validation.compareText(homePage.getTest1, 'Vendedores independientes')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.getTest1}")
    sleep(3)

    compare = validation.compareText(homePage.getTest2, 'Compras seguras')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.getTest2}")
    sleep(3)

    title=validation.compareText(@@driver.title, 'Etsy - Compra regalos hechos a mano, vintage, personalizados y únicos para todo el mundo')
    assert_true(title,'[Error] Message does not mach the expected')



  end



end