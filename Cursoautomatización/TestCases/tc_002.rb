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
    sleep(3)
  end
end