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
    bus = validacion.compareText(exercise.getBus, '5 Buses found')
    tittle = validacion.compareText(exercise.getText, 'SRS Travels')
    lleg = validacion.compareText(exercise.getTextSal, '05:30')
    sal = validacion.compareText(exercise.getTestLl, '06:30')
    assert_true(bus, '[Error] No se encontro el texto de autobuses')
    assert_true(tittle, '[Error] No se muestran correctamente el título')
    assert_true(lleg, '[Error] La hora de salida no corresponde')
    assert_true(sal, '[Error] La hora de llegada no corresponde')
  end
end