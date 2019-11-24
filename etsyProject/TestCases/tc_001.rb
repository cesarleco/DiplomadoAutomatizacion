require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Pages/home_page.rb'
require '../Assertions/assert.rb'

class TC_001 < AutomationBase # Esta clase está herednado de la clase automation_base, la cual tiene un initialize (constructor) y lo ejecuta
  def test_case_01
    homePage = Home_page.new(@@driver)

    #Verify URL
    validation = Assert.new #clase Assert
    data_hash =JSON.parse(@@file)

    res = validation.validateURL(@@driver, "https://www.etsy.com/")
    assert_true(res, "[Error] Home page URL does not match the expected")


  compare = validation.compareText(homePage.getText, 'If it’s handcrafted, vintage, custom, or unique, it’s on Etsy.')
  assert_true(compare, "[Error] Message does not match the expected")
  sleep(3)

   compare = validation.compareText(homePage.getTextTwo, 'Personalized jewelry shines a little brighter.')
   assert_true(compare, "[Error] Message does not match the expected")
   sleep(3)


    compare = validation.compareText(homePage.getTextThree, 'Unique everything')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)

    compare = validation.compareText(homePage.getTextFour, data_hash['sellers'])
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)

    compare = validation.compareText(homePage.getTextFive, data_hash['buy'])
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)

    #Validación del tittle, en automatico sabe con.title que lo debe buscar y no se necesita un método declarado en home_page
    compare = validation.compareText(@@driver.title, 'Etsy - Shop for handmade, vintage, custom, and unique gifts for everyone')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)

end
end