require '../Pages/page_example.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'


class TC_001  < TestAutomationBase
  def test_case_01
    examplePage = PageExample.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.redbus.in/")
    assert_true(res, "[Error] Home page URL does not match the expected one")
    examplePage.selectFrom('Chennai (All Locations)')
    examplePage.selectTo('Mumbai (All Locations)')
    examplePage.onward()
    examplePage.return()
    examplePage.search()
    compare = validation.compareText(examplePage.getTextBus, '4 Buses found')
    assert_true(compare, '[Error] Message does not match the expected')
    compare1 = validation.compareText(examplePage.getTextuno, 'SRS Travels')
    assert_true(compare1, '[Error] Message does not match the expected')
    compare2 = validation.compareText(examplePage.getTextdos, 'National Travels CHN')
    assert_true(compare2, '[Error] Message does not match the expected')
    comparehoraDep = validation.compareText(examplePage.getTexthoraDef, '05:30')
    assert_true(comparehoraDep, '[Error] Message does not match the expected')
    comparehoraunoDep = validation.compareText(examplePage.getTexthoradosDef, '22:00')
    assert_true(comparehoraunoDep, '[Error] Message does not match the expected')
    comparehoraArr = validation.compareText(examplePage.getTexthoraArr, '06:30')
    assert_true(comparehoraArr, '[Error] Message does not match the expected')
    comparehoraunoArr = validation.compareText(examplePage.getTexthoradosArr, '21:00')
    assert_true(comparehoraunoArr, '[Error] Message does not match the expected')
    sleep(10)
  end
end

#comparehoraunoArr = validation.compareText(@@driver.title.getTexthoradosArr, '12:30')