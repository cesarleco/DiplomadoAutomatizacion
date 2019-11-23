require 'selenium-webdriver'
require_relative '../Pages/Exercise'
require 'test-unit'
require_relative '../BaseFile/test_automation_base'
require_relative '../Assertions/assert'

class TC_001 < TestAutomationBase

  def test_case_001
    exercise = Exercise.new(@@driver)
    validacion = Assert.new
    url1 = validacion.validateURL(@@driver, "https://www.etsy.com/mx/")
    titlepage1 = validacion.compareText(@@driver.title, "Etsy - Compra regalos hechos a mano, vintage, personalizados y únicos para todo el mundo")
    assert_true(titlepage1, "[Error] No se encontro el texto del elemento Etsy")
    text1 = validacion.compareText(exercise.text1, 'Si está hecho a mano o es vintage, personalizado o único, está en Etsy.')
    assert_true(text1, "[Error] No se encontro el texto del elemento")
    text2 = validacion.compareText(exercise.text2, 'Las joyas personalizadas brillan más.')
    assert_true(text2, "[Error] No se encontro el texto del elemento")
    text3 = validacion.compareText(exercise.text3, 'Artículos únicos')
    assert_true(text3, "[Error] No se encontro el texto del elemento")
    text4 = validacion.compareText(exercise.text4, 'Vendedores independientes')
    assert_true(text4, "[Error] No se encontro el texto del elemento")
    text5 = validacion.compareText(exercise.text5, 'Compras seguras')
    assert_true(text5, "[Error] No se encontro el texto del elemento")

    #Search
    exercise.search('anillo')
    txtelemfound = validacion.compareText(exercise.foundelement, 'Regalo de compromiso / Plato de anillo / Plato de joyería / Fecha y iniciales / Regalo de boda / Regalo personalizado / Regalo para ella / Aniversario')

    #Car
    car = validacion.compareText(exercise.touchcar, 'Tu carro está vacío.')
    assert_true(car, "[Error] No se encontro el texto del elemento")
    url2 = validacion.validateURL(@@driver, "https://www.etsy.com/mx/cart?ref=hdr-cart")
    titlepage2 = validacion.compareText(@@driver.title, "Etsy - Carro de la compra")

    #Login
    exercise.btnlogin
    txterrormai = validacion.compareText(exercise.txterrormail ,'No puede estar vacío.')
    assert_true(txterrormai, "[Error] No se encontro el texto del elemento")
    txterrorpas = validacion.compareText(exercise.txterrorpass ,'No puede estar vacío.')
    assert_true(txterrorpas, "[Error] No se encontro el texto del elemento")
    exercise.esc

    #page1
    exercise.searched
    exercise.touchelemt1
    url1 = validacion.validateURL(@@driver, "https://www.etsy.com/mx/giftcards?ref=ftr")
    titlepage10 = validacion.compareText(@@driver.title, "Etsy - Tarjetas regalo")
    assert_true(titlepage10, "[Error] No se encontro el texto del elemento Tarjeta regalo")
    footer1 = validacion.compareText(exercise.footerpage1, 'Regala Etsy')
    assert_true(footer1, "[Error] No se encontro el texto del elemento Regala")

    #page2
    exercise.searched
    exercise.touchelemt2
    url2 = validacion.validateURL(@@driver, "https://www.etsy.com/mx/sell?ref=ftr")
    titlepage2 = validacion.compareText(@@driver.title, "Aprende a vender en Etsy")
    assert_true(titlepage2, "[Error] No se encontro el texto del elemento Aprende a vender")
    footer2 = validacion.compareText(exercise.footerpage2, 'Hay millones de compradores impacientes por ver lo que pondrás a la venta')
    assert_true(footer2, "[Error] No se encontro el texto de Hay millones..")

    #page3
    exercise.searched
    exercise.touchelemt3
    url3 = validacion.validateURL(@@driver, "https://www.etsy.com/mx/affiliates?ref=ftr")
    titlepage3 = validacion.compareText(@@driver.title, "Etsy - Afiliados")
    assert_true(titlepage3, "[Error] No se encontro el texto del elemento Afiliados")
    footer3 = validacion.compareText(exercise.footerpage3, '¡Únete a nuestro programa de afiliados!')
    assert_true(footer3, "[Error] No se encontro el texto de Unete..")

    #page4
    exercise.searched
    exercise.touchelemt4
    url4 = validacion.validateURL(@@driver, "https://www.etsy.com/mx/about?ref=ftr")
    titlepage4 = validacion.compareText(@@driver.title, "Acerca de Etsy")
    assert_true(titlepage4, "[Error] No se encontro el texto del elemento Acerca de")
    footer4 = validacion.compareText(exercise.footerpage4, 'Hacemos que el comercio sea más humano')
    assert_true(footer4, "[Error] No se encontro el texto de Hacemos")

    #page5
    exercise.searched
    exercise.touchelemt5
    url5 = validacion.validateURL(@@driver, "https://www.etsy.com/mx/legal?ref=ftr")
    titlepage5 = validacion.compareText(@@driver.title, "Las normas de la casa | Etsy")
    assert_true(titlepage5, "[Error] No se encontro el texto del elemento Normas de la casa")
    footer5 = validacion.compareText(exercise.footerpage5, 'Las normas de la casa')
    assert_true(footer5, "[Error] No se encontro el texto de Normas")

    #page6
    exercise.searched
    exercise.touchelemt6
    url6 = validacion.validateURL(@@driver, "https://www.etsy.com/mx/careers?ref=ftr")
    titlepage6 = validacion.compareText(@@driver.title, "Trabajar en Etsy")
    assert_true(titlepage6, "[Error] No se encontro el texto del elemento Trabajar en..")
    footer6 = validacion.compareText(exercise.footerpage6, 'Build something that matters.')
    assert_true(footer6, "[Error] No se encontro el texto de Build...")

    #page7
    exercise.searched
    exercise.touchelemt7
    url7 = validacion.validateURL(@@driver, "https://www.etsy.com/mx/press?ref=ftr")
    titlepage7 = validacion.compareText(@@driver.title, "Etsy: Prensa")
    assert_true(titlepage7, "[Error] No se encontro el texto del elemento Prensa..")
    footer7 = validacion.compareText(exercise.footerpage7, 'Prensa')
    assert_true(footer7, "[Error] No se encontro el texto de Prensa")

    #page8
    exercise.searchPrensa
    exercise.touchelemt8
    url8 = validacion.validateURL(@@driver, "https://www.etsy.com/mx/impact?ref=ftr")
    titlepage8 = validacion.compareText(@@driver.title, "Etsy Carbon-Offset Shipping: Delivering a world of good")
    assert_true(titlepage8, "[Error] No se encontro el texto del elemento Etsy Carbon..")
    footer8 = validacion.compareText(exercise.footerpage8, 'Envío con compensación de las emisiones de carbono: por un mundo mejor')
    assert_true(footer8, "[Error] No se encontro el texto de Envio con..")

  end
end