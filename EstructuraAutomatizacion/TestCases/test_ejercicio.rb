require '../Pages/home_ejercicio.rb'
require 'selenium-webdriver'
require '../Assertions/assert'
require '../BaseFiles/test_automation_base'
require 'test-unit'

class Test_ejercicio < TestAutomationBase


  def test_ejercicio
    home = Home_ejercicio.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver,"https://www.redbus.in/")
    assert_true(res,"[Error]Home page URL does not match the expected one")
    home.selectFrom('Chennai (All Locations)')
    home.selectTo('Mumbai (All Locations)')
    home.onward()
    home.return()
    home.search()
    compare = validation.compareText(home.getBus,'5 Buses')
    assert_true(compare,'[Error] Número de autobuses no encontrados')
    sleep 2
    compare = validation.compareText(home.getTitulo,'SRS Travels')
    assert_true(compare,'[Error] Título no encontrado')
    sleep 2
    compare = validation.compareText(home.getTitle,'National Travels CHN')
    assert_true(compare,'[Error] Título 2 no encontrado')
    sleep 2
    compare = validation.compareText(home.getSalida,'05:30')
    assert_true(compare,'[Error] hora de salida no encontrada')
    sleep 2
    compare = validation.compareText(home.getLlegada,'06:30')
    assert_true(compare,'[Error] hora de llegada no encontrada')
    sleep 2
  end

end