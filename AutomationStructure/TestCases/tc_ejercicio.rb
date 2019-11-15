require '../Pages/home_page2'
  require 'selenium-webdriver'
  require 'test-unit'
  require '../BasesFiles/automation_base.rb'
  require '../Assertions/assert.rb'

  class TC_ejercicio < AutomationBase
    def test_case_ejercicio
      homePage2 = Home_Page2.new(@@driver)
      validation = Assert.new
      res = validation.validateURL(@@driver, "https://www.redbus.in/")
      assert_true(res, "[Error] Home page URL does not match the expected one")
      homePage2.selectFrom('Chennai')
      homePage2.selectTo('Mumbai')
      homePage2.onward()
      homePage2.return()
      homePage2.search()
      compare = validation.compareText(homePage2.getText2, '4 Buses')
      assert_true(compare, '[Error] Message does not match the expected')
      sleep(5)
    end
  end