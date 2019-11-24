require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Pages/Search.rb'
require '../Assertions/assert.rb'

class TC_002 < AutomationBase # Esta clase está heredando de la clase automation_base, la cual tiene un initialize (constructor) y lo ejecuta
  def test_case_02
    search_ring = Search.new(@@driver)

    #Verify URL
    validation = Assert.new #clase Assert
    res = validation.validateURL(@@driver, "https://www.etsy.com/")
    assert_true(res, "[Error] Home page URL does not match the expected")

    search_ring.find("Ring")


    compare = validation.compareText(search_ring.getText, 'Micro Pave Eternity Diamond Ring / 14k Gold Micro Pave Wedding Ring / Full Eternity Stacking Ring / 1.0MM Ring / Rose Gold Wedding Band')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)



  end
end
