require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Pages/login.rb'
require '../Pages/home_text'
require '../Assertions/assert.rb'
require '../Pages/search.rb'
class TC_001 < TestAutomationBase
  def test_case_01
    login = Login.new(@@driver)
    text = HomeText.new(@@driver)
    find = Search.new(@@driver)
    #Verify URL
    validation = Assert.new
    data_hash = JSON.parse(@@file)



    res = validation.validateURL(@@driver, "https://www.etsy.com/mx/")
    assert_true(res, "[Error] Home page URL does not match the expected")

    res2 = validation.compareText(text.getTextOne,'Si está hecho a mano o es vintage, personalizado o único, está en Etsy.')
    assert_true(res2, "[Error] Text does not match the expected one")

    res3 = validation.compareText(text.getText2,'Las joyas personalizadas brillan más.')
    assert_true(res3, "[Error] Text does not match the expected one")

    res4 = validation.compareText(text.getText3,'Artículos únicos')
    assert_true(res4, "[Error] Text does not match the expected one")

    res5 = validation.compareText(text.getText4,data_hash['vendedores'])
    assert_true(res5, "[Error] Text does not match the expected one")

    find.busqueda('anillo')

    #res6 = validation.compareText(text.getText6, 'Anillo de nombre delicado personalizado • Anillos de apilamiento personalizados • Anillo personalizado delgado • Regalo de damas de honor • Nombre del bebé mamá regalo • MOTHERS REGALO • RM21F31')
    #assert_true(res6, "[Error] Text does not match the expected one")

    find.carrito('click')

    find.inicio('click')

    find.session('click')
    res6 = validation.compareText(text.getText6,'No puede estar vacío.')
    assert_true(res6, "[Error] Text does not match the expected one")

    find.session('click')
    res7 = validation.compareText(text.getText7,'No puede estar vacío.')
    assert_true(res7, "[Error] Text does not match the expected one")

    find.session('back')
    find.session('home')
    find.session('footer')





    sleep(10)
    end
end