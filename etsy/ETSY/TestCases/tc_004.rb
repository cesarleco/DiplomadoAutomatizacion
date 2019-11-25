require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Pages/login.rb'
require '../Assention/assert.rb'
require '../Pages/home_page.rb'


class TC_004 < TestAutomationBase

  def test_case_04

    homePage = HomePage.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.etsy.com/")
    assert_true(res, "[Error] Home page URL does not match the expected one ")

    homePage.ingresa()
    sleep(2)
    homePage.validar()
    sleep(2)

    compare = validation.compareText(homePage.getText11, 'No puede estar vacío.')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.getText11}")
    sleep(3)

    compare = validation.compareText(homePage.getText22, 'No puede estar vacío.')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.getText22}")
    sleep(3)

  end



end