require '../Pages/home_page_two.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'

class TC_003 < AutomationBase
  def test_case_02
    homePageTwo = Home_page_two.new(@@driver)
    validation = Assert.new
    res = validation.validateURL(@@driver, "https://www.redbus.in/")
    assert_true(res, "[Error] Home page URL does not match the expected one")
    homePageTwo.selectFrom('Mumbai (All Locations)')
    homePageTwo.selectTo('Chennai (All Locations)')
    homePageTwo.onward()
    homePageTwo.return()
    homePageTwo.search()

    compare = validation.compareText(homePageTwo.getText, '6 Buses')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)

    compare = validation.compareText(homePageTwo.getTextOne, 'SRS Travels')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)

    compare = validation.compareText(homePageTwo.getTextTwo, 'National travels ntsb')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)


    compare = validation.compareText(homePageTwo.getTextThree, '11:00')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)

    compare = validation.compareText(homePageTwo.getTextFour, '14:00')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)

  end

end