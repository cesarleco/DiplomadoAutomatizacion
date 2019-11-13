require 'selenium-webdriver'
require_relative '../Pages/precti1Page'
require 'test-unit'
require_relative '../BaseFile/test_automation_base'
require_relative '../Assertions/assert'

class Practice_1 < TestAutomationBase

  def testcaserun
    exercise = Practice1Page.new(@@driver)
    validacion = Assert.new
    res = validacion.validateURL(@@driver, "https://www.redbus.in/")
    assert_true(res, "[Error] Home page URL does not match the expected one")
    exercise.selectFrom('Chennai (All Locations)')
    exercise.selectTo('Mumbai (All Locations)')
    exercise.onward
    exercise.return
    exercise.search
    @compare = validacion.compareText(exercise.getText, 'SRS Travels')
    @compare = validacion.compareText(exercise.getTextSal, '05:30')
    @compare = validacion.compareText(exercise.getTestLl, '06:30')
    assert_true(@compare, '[Error] El mensaje no coincide con el esperado')
  end
end