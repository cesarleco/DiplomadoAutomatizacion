require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Pages/login.rb'
require '../Assention/assert.rb'
require '../Pages/home_page.rb'


class TC_005 < TestAutomationBase

  def test_case_05

    homePage = HomePage.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.etsy.com/")
    assert_true(res, "[Error] Home page URL does not match the expected one ")

    compare = validation.compareText(homePage.footer1, 'Tarjetas regalo')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.footer1}")


    compare = validation.compareText(homePage.footer2, 'Vender en Etsy')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.footer2}")

    compare = validation.compareText(homePage.footer3, 'Afiliados')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.footer3}")

    compare = validation.compareText(homePage.footer4, 'Etsy, Inc.')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.footer4}")

    compare = validation.compareText(homePage.footer5, 'Políticas')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.footer5}")

    compare = validation.compareText(homePage.footer6, 'Empleo')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.footer6}")

    compare = validation.compareText(homePage.footer7, 'Prensa')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.footer7}")

    compare = validation.compareText(homePage.footer8, 'Impacto')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.footer8}")

    title=validation.compareText(@@driver.title, 'Etsy - Compra regalos hechos a mano, vintage, personalizados y únicos para todo el mundo')
    assert_true(title,'[Error] Message does not mach the expected')

  end
end

