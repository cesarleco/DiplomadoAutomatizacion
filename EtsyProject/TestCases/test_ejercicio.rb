require '../Pages/home_ejercicio.rb'
require 'selenium-webdriver'
require '../Assertions/assert'
require '../BaseFiles/test_automation_base'
require 'test-unit'

class Test_ejercicio < TestAutomationBase


  def test_ejercicio
    home = Home_ejercicio.new(@@driver)
    validation = Assert.new
    data_hash = JSON.parse(@@file)
    compare = validation.compareText(home.getTitle,'Si está hecho a mano o es vintage, personalizado o único, está en Etsy.')
    assert_true(compare,'[Error] Título  no encontrado')
    compare2 = validation.compareText(home.getTitle2,'Las joyas personalizadas brillan más.')
    assert_true(compare2,'[Error] Título 2  no encontrado')
    compare3 = validation.compareText(home.getFooter1,'Artículos únicos')
    assert_true(compare3,'[Error] Footer 1  no encontrado')
    compare4 = validation.compareText(home.getFooter2,data_hash['vendedores'])
    assert_true(compare4,'[Error] Footer 2  no encontrado')
    compare5 = validation.compareText(home.getFooter3,data_hash['compras'])
    assert_true(compare5,'[Error] Footer 3 no encontrado')
    res = validation.validateURL(@@driver,"https://www.etsy.com/")
    assert_true(res,"[Error]Pagina no encontrada")
    title = validation.compareText(@@driver.title, 'Etsy - Compra regalos hechos a mano, vintage, personalizados y únicos para todo el mundo')
    assert_true(title,"Titulo de la url no encontrado")
    home.busqueda('anillo')

    #puts home.getResultado
    #compare6 = validation.verifySubstring(home.getResultado, 'Certified')

    #compare = validation.compareText(home.getResultado,'Twisted Engagement Ring - Nature Inspired White Sapphire Twig Ring in Yellow Gold, White Gold, Rose Gold or Platinum')
    #assert_true(compare6,'[Error] Titulo del resultado de la busqueda no encontrado')
    #
    home.clickCarrito()
    compare7 = validation.compareText(home.getCarrito,'Tu carro está vacío.')
    assert_true(compare7,'[Error] Carrito lleno')
    sleep 3
    res2 = validation.validateURL(@@driver,"https://www.etsy.com/mx/cart?ref=hdr-cart")
    assert_true(res2,"[Error] pagina de carrito no encontrada")
    title2 = validation.compareText(@@driver.title,'Etsy - Carro de la compra')
    assert_true(title2,"titulo de pagina de carrito no encontrado")
    home.clickEntrar()
    sleep 2
    home.clickInicia()
    sleep 2
    compare8 = validation.compareText(home.error1,'No puede estar vacío.')
    assert_true(compare8,"[Error] no encuentra el error en correo")
    compare9 = validation.compareText(home.error1,'No puede estar vacío.')
    assert_true(compare9,"[Error] no encuentra el error en password")
    home.salir
    home.clickRegresar()
    sleep 2
    home.bajar
    res3 = validation.validateURL(@@driver,"https://www.etsy.com/mx/?ref=lgo")
    assert_true(res3,"[Error] pagina de footer no encontrada")
    compare10 = validation.compareText(home.footer1,'Tarjetas regalo')
    assert_true(compare10,"[Error] titulo 1 del footer no encontrado")
    compare11 = validation.compareText(home.footer2,'Vender en Etsy')
    assert_true(compare11,"[Error] titulo 2 del footer no encontrado")
    compare12 = validation.compareText(home.footer3,'Afiliados')
    assert_true(compare12,"[Error] titulo 3 del footer no encontrado")
    compare13 = validation.compareText(home.footer4,'Etsy, Inc.')
    assert_true(compare13,"[Error] titulo 4 del footer no encontrado")
    compare14 = validation.compareText(home.footer5,'Políticas')
    assert_true(compare14,"[Error] titulo 5 del footer no encontrado")
    compare15 = validation.compareText(home.footer6,'Empleo')
    assert_true(compare15,"[Error] titulo 6 del footer no encontrado")
    sleep 3
    compare16 = validation.compareText(home.footer7,'Prensa')
    assert_true(compare16,"[Error] titulo 7 del footer no encontrado")
    sleep 3
    compare17 = validation.compareText(home.footer8,'Impacto')
    assert_true(compare17,"[Error] titulo 8 del footer no encontrado")
    sleep 3

  end


end