require '../Pages/home_page'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'

class TC_002 < TestAutomationBase
  def test_case_02
    homePage = HomePage.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.redbus.in/")
    assert_true(res, "[Error] Home page URL does not match the expected one")
    homePage.selectFrom('Chennai')
    homePage.selectTo('Mumbai')
    homePage.onward()
    homePage.return()
    homePage.search()
    #compare = validation.compareText(homePage.getText, 'Oops! No buses found.')
    #assert_true(compare, '[Error] Message does not match the expected')
    bus = validation.compareBus(homePage.getBus,'5 Buses')
    assert_true(bus, "[Error] Home page URL does not match the expected one")

    tit1=validation.compareTit1(homePage.getTit1,'SRS Travels')
    assert_true(tit1, "[Error] Message does not mach the expected")
    tit2=validation.compareTit2(homePage.getTit2,'National Travels CHN')
    assert_true(tit2, "[Error] Message does not mach the expected")
    dep1=validation.compareDep1(homePage.getDep1,'05:30')
    assert_true(dep1, "[Error] Message does not mach the expected")
    arr1=validation.compareArr1(homePage.getArr1,'06:30')
    assert_true(arr1, "[Error] Message does not mach the expected")
    dep2=validation.compareDep2(homePage.getDep2,'10:30')
    assert_true(dep2, "[Error] Message does not mach the expected")
    arr2=validation.compareArr2(homePage.getArr2,'11:30')
    assert_true(arr2, "[Error] Message does not mach the expected")
    homepage.nodo1()
    nod1=validation.compareNodo1(homepage.getNodo1,'BUS TICKETS')
    assert_true(nod1,'[Error] Message does not mach the expected')
    homepage.nodo2()
    nod2=validation.compareNodo2(homepage.getNodo2,'Online Bus Ticket Booking')
    assert_true(nod2,'[Error] Message does not mach the expected')
    homepage.nodo3()
    nod3=validation.compareNodo3(homepage.getNodo3,'Bikepool & Carpool for Professionals')
    assert_true(nod3,'[Error] Message does not mach the expected')
    homepage.nodo4()
    nod4=validation.compareNodo4(homepage.getNodo4,'HOTELS')
    assert_true(nod4,'[Error] Message does not mach the expected')
    homepage.nodo5()
    nod5=validation.compareNodo5(homepage.getNodo5,'Travelling Together Is Easy')
    assert_true(nod5,'[Error] Message does not mach the expected')
    homepage.nodo6()
    nod6=validation.compareNodo6(homepage.getNodo6,'Pilgrimage Packages')
    assert_true(nod6,'[Error] Message does not mach the expected')
    sleep(3)

  end
end