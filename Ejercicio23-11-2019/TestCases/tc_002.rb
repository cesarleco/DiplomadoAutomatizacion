require '../Pages/home_page.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'

class TC_002 < TestAutomationBase
  def test_case_02
    homePage = HomePage.new(@@driver)
    validation = Assert.new

    data_hash = JSON.parse(@@file)

    compare = validation.compareText(homePage.titulo1,'Si está hecho a mano o es vintage, personalizado o único, está en Etsy.')
    assert_true(compare, "[Error] El primer texto no coincide con el de la pagina #{homePage.titulo1}")
    compare = validation.compareText(homePage.titulo2,'Las joyas personalizadas brillan más.')
    assert_true(compare, "[Error] El segundo texto no coincide con el de la pagina #{homePage.titulo2}")
    compare = validation.compareText(homePage.titulo3,'Artículos únicos')
    assert_true(compare, "[Error] El tercer texto no coincide con el de la pagina #{homePage.titulo3}")
    #compare = validation.compareText(homePage.titulo4,'Vendedores independientes')
    compare = validation.compareText(homePage.titulo4,data_hash['vendedores'])
    assert_true(compare, "[Error] El cuarto texto no coincide con el de la pagina #{homePage.titulo4}")
    #compare = validation.compareText(homePage.titulo5,'Compras seguras')
    compare = validation.compareText(homePage.titulo5,data_hash['compras'])
    assert_true(compare, "[Error] El quinto texto no coincide con el de la pagina #{homePage.titulo5}")

    res = validation.validateURL(@@driver,"https://www.etsy.com/")
    assert_true(res, "[Error] La URL no coincide")

    #El metodo de titulo es propio de ruby no se declaro o creo en ningun lado
    res1 = validation.compareText(@@driver.title, "Etsy - Compra regalos hechos a mano, vintage, personalizados y únicos para todo el mundo")
    assert_true(res1, "[Error] El titulo no coincide")

    homePage.Buscar('anillo')
    homePage.clickBuscar

    compare = validation.compareText(homePage.Valorbusqueda,'Regalo de compromiso / Plato de anillo / Plato de joyería / Fecha y iniciales / Regalo de boda / Regalo personalizado / Regalo para ella / Aniversario')
    assert_true(compare, "[Error] No existe el anillo Real Mako sirena Moonpool #{homePage.Valorbusqueda}")

    homePage.clickCarrito

    compare = validation.compareText(homePage.textocarrito,'Tu carro está vacío.')
    assert_true(compare, "[Error] El texto del carrito vacio no coincide con el de la pagina #{homePage.textocarrito}")
    homePage.clickentrar
    homePage.clickIniciarSesion
    sleep(3)
    compare = validation.compareText(homePage.textocorreo,'No puede estar vacío.')
    assert_true(compare, "[Error] El texto de la validación del campo correo no coincide #{homePage.textocorreo}")

    compare = validation.compareText(homePage.textocontraseña,'No puede estar vacío.')
    assert_true(compare, "[Error] El texto de la validación del campo contraseña no coincide #{homePage.textocontraseña}")
    sleep(2)

    homePage.salir
    sleep(3)

    homePage.principal
    sleep(5)

    homePage.fin
    sleep(5)

    compare = validation.compareText(homePage.textofooter1,'Tarjetas regalo')
    assert_true(compare, "[Error] El texto Tarjetas regalo no coincide #{homePage.textofooter1}")
    sleep(2)

    compare = validation.compareText(homePage.textofooter2,'Vender en Etsy')
    assert_true(compare, "[Error] El texto Vender en Etsy no coincide #{homePage.textofooter2}")
    sleep(2)

    compare = validation.compareText(homePage.textofooter3,'Afiliados')
    assert_true(compare, "[Error] El texto Afiliados no coincide #{homePage.textofooter3}")
    sleep(2)
    compare = validation.compareText(homePage.textofooter4,'Etsy, Inc.')
    assert_true(compare, "[Error] El texto Etsy, Inc. no coincide #{homePage.textofooter4}")
    sleep(2)

    compare = validation.compareText(homePage.textofooter5,'Políticas')
    assert_true(compare, "[Error] El texto Políticas no coincide #{homePage.textofooter5}")
    sleep(2)

    compare = validation.compareText(homePage.textofooter6,'Empleo')
    assert_true(compare, "[Error] El texto Empleo no coincide #{homePage.textofooter6}")
    sleep(2)

    compare = validation.compareText(homePage.textofooter7,'Prensa')
    assert_true(compare, "[Error] El texto Prensa no coincide #{homePage.textofooter7}")
    sleep(2)
    compare = validation.compareText(homePage.textofooter8,'Impacto')
    assert_true(compare, "[Error] El texto Impacto no coincide #{homePage.textofooter8}")
    sleep(2)
    res = validation.validateURL(@@driver,"https://www.etsy.com/mx/?ref=lgo")
    assert_true(res, "[Error] La URL del footer no coincide")

  end

end