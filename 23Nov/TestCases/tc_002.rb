require '../Pages/busqueda.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'

class TC_002 < TestAutomationBase
  def test_case_002
    buscador = Busqueda.new(@@driver)
    validation = Assert.new

    buscador.buscar('anillos')
    compare = validation.compareText(buscador.textUno, '14k Gold Double Row Micro Pave Diamond Ring with Baguette Diamond / Black Friday Sale')
    assert_true(compare, '[Error] Message does not match the expected')

  end
  end
