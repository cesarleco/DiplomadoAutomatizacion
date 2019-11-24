require '../Pages/login.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'

class TC_004 < TestAutomationBase
  def test_case_004
    log = Login.new(@@driver)
    validation = Assert.new

    log.popUp
    sleep(3)

    #puts @@driver.find_element(css: '#join-neu-form > div:nth-child(7) > div > div:nth-child(6) > div > button').text
    el = @@driver.find_element(css: '#join-neu-form > div:nth-child(7) > div > div:nth-child(6) > div > button')
    @@driver.action.move_to(el).click(el).perform #para darles click porque no los ve y con el .click no funciona
    sleep(3)

    compare = validation.compareText(log.menValUno, 'No puede estar vacío.')
    assert_true(compare, '[Error] Message does not match the expected')

    compare = validation.compareText(log.menValDos, 'No puede estar vacío.')
    assert_true(compare, '[Error] Message does not match the expected')
    sleep(5)
  end
end