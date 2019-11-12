require '../Pages/home_page.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base'
require '../Assention/assert'


class TC_003 < TestAutomationBase

  def test_case_01

    homePage = HomePage.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.redbus.in/")
    assert_true(res, "[Erro] Home page URL does not match the expected one")
    homePage.selectFron('Chennai')
    homePage.selectTu('Mumbai')
    homePage.onguard()
    homePage.retur()
    homePage.searx()
    sleep(5)
    compare = validation.compareText(homePage.getTex, '5 Buses')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.getTex}")
    compare = validation.compareText(homePage.getTest, 'SRS Travels')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.getTest}")
    compare = validation.compareText(homePage.getTest1, 'National Travels CHN')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.getTest1}")
    compare = validation.compareText(homePage.getdepature, '05:30')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.getdepature}")
    compare = validation.compareText(homePage.getdepature1, '10:30')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.getdepature1}")
    compare = validation.compareText(homePage.getarrival, '06:30')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.getarrival}")
    compare = validation.compareText(homePage.getarrival1, '11:30')
    assert_true(compare, "[Error] Message does not match the expected #{homePage.getarrival1}")
    sleep(3)
  end


end