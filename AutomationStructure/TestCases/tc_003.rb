require '../Pages/homepage.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'

class TC_003 < TestAutomationBase

  #Numero de autobuses encontrados
  # Validar los dos primeros titulos(SRS travel)
  # Validar la hora de salida y la fecha de regreso de cada resultado ej. National travels CHN
  def test_case_03
    homePage = HomePage.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.redbus.in/")
    assert_true(res, "[Error] Home page does nor match the expected one")
    homePage.selectFrom('Chennai (All Locations)')
    homePage.selectTo('Mumbai (All Locations)')
    homePage.onward
    homePage.return
    homePage.search
    sleep(7)
    homePage.buses_num
    homePage.buses_name
    homePage.schedule
    sleep(5)
  end
end