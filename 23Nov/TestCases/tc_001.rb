
require '../Pages/home_page.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'

  class TC_001  < TestAutomationBase
    def test_case_01
      examplePage = HomePage.new(@@driver)
      validation = Assert.new
      data_hash= JSON.parse(@@file)

      res = validation.validateURL(@@driver, "https://www.etsy.com/mx/")
      assert_true(res, "[Error] Home page URL does not match the expected one")

      res = validation.compareText(@@driver.title, 'Etsy - Compra regalos hechos a mano, vintage, personalizados y únicos para todo el mundo')
      assert_true(res, "[Error]")

      compare = validation.compareText(examplePage.textUno, 'Si está hecho a mano o es vintage, personalizado o único, está en Etsy.')
      assert_true(compare, '[Error] Message does not match the expected')
      compare1 = validation.compareText(examplePage.textDos, 'Las joyas personalizadas brillan más.')
      assert_true(compare1, '[Error] Message does not match the expected')
      compare2 = validation.compareText(examplePage.textTres, 'Artículos únicos')
      assert_true(compare2, '[Error] Message does not match the expected')
     compare3 = validation.compareText(examplePage.textCuatro, data_hash['articulos'])
      assert_true(compare3, '[Error] Message does not match the expected')
      compare4 = validation.compareText(examplePage.textCinco, data_hash['compras'])
      assert_true(compare4, '[Error] Message does not match the expected')

      sleep(5)
    end
  end
