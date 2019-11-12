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
   # assert_true(compare,'[Error] Message does not mach the expected')

    bus=validation.compareBus(homepage.getBus, '5 Buses')
    assert_true(bus,'[Error] Message does not mach the expected')

    tit1=validation.compareTit1(homepage.getTit1,'National Travels CHN')
    assert_true(tit1,'[Error] Message does not mach the expected')
    tit2=validation.compareTit2(homepage.getTit2,'National travels')
    assert_true(tit2,'[Error] Message does not mach the expected')

    dep1=validation.compareDep1(homepage.getDep1,'22:00')
    assert_true(dep1,'[Error] Message does not mach the expected')
    arr1=validation.compareArr1(homepage.getArr1,'21:00')
    assert_true(arr1,'[Error] Message does not mach the expected')

    dep2=validation.compareDep2(homepage.getDep2,'13:30')
    assert_true(dep2,'[Error] Message does not mach the expected')
    arr2=validation.compareArr2(homepage.getArr2,'13:35')
    assert_true(arr2,'[Error] Message does not mach the expected')

    sleep(3)
  end
end