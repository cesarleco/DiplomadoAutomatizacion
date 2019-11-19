require '../Pages/home_page.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'
class TC_002 < TestAutomationBase
  def test_case_02
    homepage=Home_Page.new(@@driver)
    validation=Assert.new
    res=validation.validateURL(@@driver,"https://www.redbus.in/")
    assert_true(res, "[Error] Home page URL does not match the expected one")
    homepage.selectFrom ('Chennai')
    homepage.selectTo('Mumbai')
    homepage.onward()
    homepage.return()
    homepage.search()

   #compare= validation.compareText(homepage.getText, 'Oops! No buses found.')
    #assert_true(compare,'[Error] Message does not mach the expected')

    bus=validation.compareBus(homepage.getBus, '3 Buses found')
    assert_true(bus,'[Error] Message does not mach the expected')

    tit1=validation.compareTit1(homepage.getTit1,'National travels')
    assert_true(tit1,'[Error] Message does not mach the expected')
    tit2=validation.compareTit2(homepage.getTit2,'National travels')
    assert_true(tit2,'[Error] Message does not mach the expected')

    dep1=validation.compareDep1(homepage.getDep1,'22:00')
    assert_true(dep1,'[Error] Message does not mach the expected')
    arr1=validation.compareArr1(homepage.getArr1,'21:00')
    assert_true(arr1,'[Error] Message does not mach the expected')

    dep2=validation.compareDep2(homepage.getDep2,'13:30')
    assert_true(dep2,'[Error] Message does not mach the expected')
    arr2=validation.compareArr2(homepage.getArr2,'15:50')
    assert_true(arr2,'[Error] Message does not mach the expected')
    sleep(3)
    homepage.node1()
    nod1=validation.compareNod1(homepage.getNod1,'BUS TICKETS')
    assert_true(nod1,'[Error] Message does not mach the expected')

    homepage.node2()
    nod2=validation.compareNod2(homepage.getNod2,'Online Bus Ticket Booking')
    assert_true(nod2,'[Error] Message does not mach the expected')

    homepage.node3()
    nod3=validation.compareNod3(homepage.getNod3,'Bikepool & Carpool for Professionals')
    assert_true(nod3,'[Error] Message does not mach the expected')

    homepage.node4()
    nod4=validation.compareNod4(homepage.getNod4,'HOTELS')
    assert_true(nod4,'[Error] Message does not mach the expected')

    homepage.node5()
    nod5=validation.compareNod5(homepage.getNod5,'Travelling Together Is Easy')
    assert_true(nod5,'[Error] Message does not mach the expected')

    homepage.node6()
    nod6=validation.compareNod6(homepage.getNod6,'Pilgrimage Packages')
    assert_true(nod6,'[Error] Message does not mach the expected')

    sleep(3)
  end
end