require '../Pages/home_page.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'

class TC_002 < TestAutomationBase
  def test_case_02
    homePage = HomePage.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver,"https://www.redbus.in/")
    assert_true(res, "[Error] Home page URL does not match the expected one")
    homePage.selectFrom('Chennai (All Locations)')
    homePage.selectTo('Mumbai(All Locations)')
    homePage.onward()
    homePage.return()
    homePage.search()
    compare = validation.compareText(homePage.getNumau,'4 Buses')
    assert_true(compare, "[Error] El texto ingresado no coincide con el texto de la pagina . #{homePage.getNumau}")
    compare = validation.compareText(homePage.getSrstravels,'SRS Travels')
    assert_true(compare, "[Error] El titulo ingresado no coincide con el texto de la pagina . #{homePage.getSrstravels}")
    compare = validation.compareText(homePage.getNational,'National Travels CHN')
    assert_true(compare, "[Error] El titulo ingresado no coincide con el texto de la pagina . #{homePage.getNational}")
    compare = validation.compareText(homePage.getDeparture,'05:30')
    assert_true(compare, "[Error] La hora ingresada de departure no coincide con la hora de la pagina . #{homePage.getDeparture}")
    compare = validation.compareText(homePage.getArrival,'06:30')
    assert_true(compare, "[Error] La hora ingresada de arrival no coincide con la hora de la pagina . #{homePage.getArrival}")
    sleep(5)
  end

end
