require '../Pages/home_page_horario'
require 'selenium-webdriver'
require 'test-unit'
require '../BasesFiles/automation_base.rb'
require '../Assertions/assert.rb'


class TC_horario < AutomationBase
  def test_case_ejercicio
    homePage_horario = Home_Page_Horario.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.redbus.in/")
    assert_true(res, "[Error] Home page URL does not match the expected one")
    homePage_horario.selectFrom('Chennai')
    homePage_horario.selectTo('Mumbai')
    homePage_horario.onward()
    homePage_horario.return()
    homePage_horario.search()
    compare = validation.compareText(homePage_horario.getText4, '11:40')
    assert_true(compare, '[Error] Message does not match the expected')
    sleep(5)
  end

end