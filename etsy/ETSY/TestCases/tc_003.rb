require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Pages/login.rb'
require '../Assention/assert.rb'
require '../Pages/home_page.rb'


class TC_003 < TestAutomationBase

  def test_case_03

    homePage = HomePage.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.etsy.com/")
    assert_true(res, "[Error] Home page URL does not match the expected one ")

    homePage.carrito()
    sleep(2)
    compare = validation.compareText(homePage.getText, 'Tu carro está vacío.')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.getText}")
    sleep(3)
  end




end

