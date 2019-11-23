require '../Pages/Ejercicio.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'

class TC_Excercise_01 <TestAutomationBase
  def test_case_Excercise
    exercise = Exercise.new (@@driver)

    assert = Assert.new #nuevo objeto para comprar la URL del navgador con la URL esperada
    res = assert.validateURL(@@driver, "https://www.etsy.com/")
    assert_true(res, "[Error] Home page URL does not match the expected one")

    val = Assert.new #Nuevo metodo para validar titulo
    res = val.compareText(@@driver.title,'Etsy - Compra regalos hechos a mano, vintage, personalizados y únicos para todo el mundo')
    assert_true(res,"[Error] Message does not match the expected #{@@driver.title}")

    #se compar el texto Si está hecho a mano o es vintage, personalizado o único, está en Etsy.
    compare = assert.compareText(exercise.getTex_T,'Si está hecho a mano o es vintage, personalizado o único, está en Etsy.')
    assert_true(compare,"[Error] Message does not match the expected #{exercise.getTex_T}")

    #Se compara el texto Las joyas personalizadas brillan más.
    compare = assert.compareText(exercise.getTex_Public,'Las joyas personalizadas brillan más.')
    assert_true(compare,"[Error] Message does not match the expected #{exercise.getTex_Public}")

    #Se compara el texto Artículos únicos
    compare = assert.compareText(exercise.getText_opcion01,'Artículos únicos')
    assert_true(compare,"[Error] Message does not match the expected #{exercise.getText_opcion01}")

    compare = assert.compareText(exercise.getText_opcion02, 'Vendedores independientes')
    assert_true(compare, "[Error] Message does not match the expected #{exercise.getText_opcion02}" )

    compare = assert.compareText(exercise.getText_opcion03,'Compras seguras')
    assert_true(compare,"[Error] Message does not match the expected #{exercise.getText_opcion03}")

    exercise.Search('anillo')

    compare = assert.compareText(exercise.getText_resSearch, "Anuncio")
    assert_true(compare,"[Error] Message does not match the expected #{exercise.getText_resSearch}")

    exercise.buyKart()

    valURL2 = Assert.new #nuevo objeto para comprar la URL del navgador con la URL esperada
    valURL = valURL2.validateURL(@@driver, "https://www.etsy.com/mx/cart?ref=hdr-cart")
    assert_true(valURL, "[Error] Home page URL does not match the expected one")

    valTitle = Assert.new #Nuevo metodo para validar titulo
    resTitle = valTitle.compareText(@@driver.title,'Etsy - Carro de la compra')
    assert_true(resTitle,"[Error] Message does not match the expected #{@@driver.title}")

    compare = assert.compareText(exercise.emptyKart, "Tu carro está vacío.")
    assert_true(compare,"[Error] Message does not match the expected #{exercise.emptyKart}")

    exercise.popupLogin()

    #@@driver.switch_to.active_element()

    compare = assert.compareText(exercise.getText_Email,'No puede estar vacío.')
    assert_true(compare,"[Error] Message does not match the expected #{exercise.getText_Email}")

    compare = assert.compareText(exercise.getTex_Pass,'No puede estar vacío.')
    assert_true(compare,"[Error] Message does not match the expected #{exercise.getTex_Pass}")

    @@driver.action.send_keys(:escape).perform
    sleep(2)

    exercise.back_title
    sleep(2)

    exercise.click_foot01

    valFoot01 = Assert.new #Nuevo metodo para validar titulo foot
    resfoot01 = valFoot01.compareText(@@driver.title,'Etsy - Tarjetas regalo')
    assert_true(resfoot01,"[Error] Message does not match the expected #{@@driver.title}")

    compare = assert.compareText(exercise.getText_foot01,'Regala Etsy')
    assert_true(compare,"[Error] Message does not match the expected #{exercise.getText_foot01}")

    exercise.click_foot02

    valFoot02 = Assert.new #Nuevo metodo para validar titulo foot
    resfoot02 = valFoot02.compareText(@@driver.title,'Aprende a vender en Etsy')
    assert_true(resfoot02,"[Error] Message does not match the expected #{@@driver.title}")

    compare = assert.compareText(exercise.getText_foot02, "Hay millones de compradores impacientes por ver lo que pondrás a la venta")
    assert_true(compare,"[Error] Message does not match the expected #{exercise.getText_foot02}" )

    exercise.click_foot03

    valFoot03 = Assert.new #Nuevo metodo para validar titulo foot
    resfoot03 = valFoot03.compareText(@@driver.title,'Etsy - Afiliados')
    assert_true(resfoot03,"[Error] Message does not match the expected #{@@driver.title}")

    compare = assert.compareText(exercise.getText_foot03,'¡Únete a nuestro programa de afiliados!')
    assert_true(compare, "[Error] Message does not match the expected #{exercise.getText_foot03}")

    exercise.click_foot04

    valFoot04 = Assert.new #Nuevo metodo para validar titulo foot
    resfoot04 = valFoot04.compareText(@@driver.title,'Acerca de Etsy')
    assert_true(resfoot04,"[Error] Message does not match the expected #{@@driver.title}")

    compare = assert.compareText(exercise.getText_foot04,'Hacemos que el comercio sea más humano')
    assert_true(compare, "[Error] Message does not match the expected #{exercise.getText_foot04}")

    exercise.click_foot05

    valFoot05 = Assert.new #Nuevo metodo para validar titulo foot
    resfoot05 = valFoot05.compareText(@@driver.title,'Las normas de la casa | Etsy')
    assert_true(resfoot05,"[Error] Message does not match the expected #{@@driver.title}")

    compare = assert.compareText(exercise.getText_foot05,'Las normas de la casa')
    assert_true(compare, "[Error] Message does not match the expected #{exercise.getText_foot05}")

    exercise.click_foot06

    valFoot06 = Assert.new #Nuevo metodo para validar titulo foot
    resfoot06 = valFoot06.compareText(@@driver.title,'Trabajar en Etsy')
    assert_true(resfoot06,"[Error] Message does not match the expected #{@@driver.title}")

    compare = assert.compareText(exercise.getText_foot06,'Learn, share, create. Build something that matters.')
    assert_true(compare, "[Error] Message does not match the expected #{exercise.getText_foot06}")

    exercise.click_foot07

    valFoot07 = Assert.new #Nuevo metodo para validar titulo foot
    resfoot07 = valFoot07.compareText(@@driver.title,'Etsy: Prensa')
    assert_true(resfoot07,"[Error] Message does not match the expected #{@@driver.title}")

    compare = assert.compareText(exercise.getText_foot07,'Prensa')
    assert_true(compare, "[Error] Message does not match the expected #{exercise.getText_foot07}")

    exercise.click_foot08

    valFoot08 = Assert.new #Nuevo metodo para validar titulo foot
    resfoot08 = valFoot08.compareText(@@driver.title,'Etsy Carbon-Offset Shipping: Delivering a world of good')
    assert_true(resfoot08,"[Error] Message does not match the expected #{@@driver.title}")

    compare = assert.compareText(exercise.getText_foot08,'CÓMO HACEMOS QUE EL COMERCIO SEA MÁS HUMANO')
    assert_true(compare, "[Error] Message does not match the expected #{exercise.getText_foot08}")

  end

end