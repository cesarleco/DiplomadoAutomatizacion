require '../Pages/home_page.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'

class Etsy < TestAutomationBase
  def test_case
    homepage=Home_Page.new(@@driver)
    validation=Assert.new

    text1=validation.compareText(homepage.text1home, 'Si está hecho a mano o es vintage, personalizado o único, está en Etsy.')
    assert_true(text1,'[Error] Message does not mach the expected')

    text2=validation.compareText(homepage.text2home, 'Las joyas personalizadas brillan más.')
    assert_true(text2,'[Error] Message does not mach the expected')

    text3=validation.compareText(homepage.text3home, 'Artículos únicos')
    assert_true(text3,'[Error] Message does not mach the expected')

    text4=validation.compareText(homepage.text4home, 'Vendedores independientes')
    assert_true(text4,'[Error] Message does not mach the expected')

    text5=validation.compareText(homepage.text5home, 'Compras seguras')
    assert_true(text5,'[Error] Message does not mach the expected')
    pag=validation.validateURL(@@driver,"https://www.etsy.com/")
    assert_true(pag, "[Error] Home page URL does not match the expected one")

    title=validation.compareText(@@driver.title, 'Etsy - Compra regalos hechos a mano, vintage, personalizados y únicos para todo el mundo')
    assert_true(title,'[Error] Message does not mach the expected')

    pag2=validation.validateURL(@@driver,"https://www.etsy.com/")
    assert_true(pag2,'[Error] Message does not mach the expected')

    homepage.searchTo('anillo')

    resultsearch=validation.compareText(homepage.text6home,homepage.text6home )
    assert_true(resultsearch,'[Error] Message does not mach the expected')

    homepage.car()
    textcar=validation.compareText(homepage.textcar, 'Tu carro está vacío.')
    assert_true(textcar,'[Error] Message does not mach the expected')

    pag3=validation.validateURL(@@driver,"https://www.etsy.com/mx/cart?ref=hdr-cart")
    assert_true(pag3,'[Error] Message does not mach the expected')

    title2=validation.compareText(@@driver.title, 'Etsy - Carro de la compra')
    assert_true(title2,'[Error] Message does not mach the expected')

    homepage.open()
    homepage.login()
    sleep(3)

    error1=validation.compareText(homepage.err1, 'No puede estar vacío.')
    sleep(3)
    assert_true(error1,'[Error] Message does not mach the expected')
    error2=validation.compareText(homepage.err2, 'No puede estar vacío.')
    assert_true(error2,'[Error] Message does not mach the expected')
    sleep(3)
    homepage.sal()
    homepage.logo()
    sleep(3)
    pag4=validation.validateURL(@@driver,"https://www.etsy.com/mx/?ref=lgo")
    assert_true(pag4,'[Error] Message does not mach the expected')

    title3=validation.compareText(@@driver.title, 'Etsy - Compra regalos hechos a mano, vintage, personalizados y únicos para todo el mundo')
    assert_true(title3,'[Error] Message does not mach the expected')



    sixtext1=validation.compareText(homepage.sitext1, 'Tarjetas regalo')
    assert_true(sixtext1,'[Error] Message does not mach the expected')
    homepage.tarjetas()

    footerURL1=validation.validateURL(@@driver,"https://www.etsy.com/mx/giftcards?ref=ftr")
    assert_true(footerURL1,'[Error] Message does not mach the expected')
    titlefooter1=validation.compareText(@@driver.title, 'Etsy - Tarjetas regalo')
    assert_true(titlefooter1,'[Error] Message does not mach the expected')

    sixtext2=validation.compareText(homepage.sitext2, 'Vender en Etsy')
    assert_true(sixtext2,'[Error] Message does not mach the expected')
    homepage.vender()
    footerURL2=validation.validateURL(@@driver,"https://www.etsy.com/mx/sell?ref=ftr")
    assert_true(footerURL2,'[Error] Message does not mach the expected')
    titlefooter2=validation.compareText(@@driver.title, 'Aprende a vender en Etsy')
    assert_true(titlefooter2,'[Error] Message does not mach the expected')

    sixtext3=validation.compareText(homepage.sitext3, 'Afiliados')
    assert_true(sixtext3,'[Error] Message does not mach the expected')
    homepage.afiliados()

    footerURL3=validation.validateURL(@@driver,"https://www.etsy.com/mx/affiliates?ref=ftr")
    assert_true(footerURL3,'[Error] Message does not mach the expected')
    titlefooter3=validation.compareText(@@driver.title, 'Etsy - Afiliados')
    assert_true(titlefooter3,'[Error] Message does not mach the expected')

    sixtext4=validation.compareText(homepage.sitext4, 'Etsy, Inc.')
    assert_true(sixtext4,'[Error] Message does not mach the expected')
    homepage.inc()

    footerURL4=validation.validateURL(@@driver,"https://www.etsy.com/mx/about?ref=ftr")
    assert_true(footerURL4,'[Error] Message does not mach the expected')
    titlefooter4=validation.compareText(@@driver.title, 'Acerca de Etsy')
    assert_true(titlefooter4,'[Error] Message does not mach the expected')

    sixtext5=validation.compareText(homepage.sitext5, 'Políticas')
    assert_true(sixtext5,'[Error] Message does not mach the expected')

    homepage.politicas()

    footerURL5=validation.validateURL(@@driver,"https://www.etsy.com/mx/legal?ref=ftr")
    assert_true(footerURL5,'[Error] Message does not mach the expected')
    titlefooter5=validation.compareText(@@driver.title, 'Las normas de la casa | Etsy')
    assert_true(titlefooter5,'[Error] Message does not mach the expected')

    sixtext6=validation.compareText(homepage.sitext6, 'Empleo')
    assert_true(sixtext6,'[Error] Message does not mach the expected')
    homepage.empleo()

    footerURL6=validation.validateURL(@@driver,"https://www.etsy.com/mx/careers?ref=ftr#engineering")
    assert_true(footerURL6,'[Error] Message does not mach the expected')
    titlefooter6=validation.compareText(@@driver.title, 'Trabajar en Etsy')
    assert_true(titlefooter6,'[Error] Message does not mach the expected')

    sixtext7=validation.compareText(homepage.sitext7, 'Prensa')
    assert_true(sixtext7,'[Error] Message does not mach the expected')
    homepage.prensa()

    footerURL7=validation.validateURL(@@driver,"https://www.etsy.com/mx/press?ref=ftr")
    assert_true(footerURL7,'[Error] Message does not mach the expected')
    titlefooter7=validation.compareText(@@driver.title, 'Etsy: Prensa')
    assert_true(titlefooter7,'[Error] Message does not mach the expected')

    sixtext8=validation.compareText(homepage.sitext8, 'Impacto')
    assert_true(sixtext8,'[Error] Message does not mach the expected')
    homepage.impacto()

    footerURL8=validation.validateURL(@@driver,"https://www.etsy.com/mx/impact?ref=ftr")
    assert_true(footerURL8,'[Error] Message does not mach the expected')
    titlefooter8=validation.compareText(@@driver.title, 'Etsy Carbon-Offset Shipping: Delivering a world of good')
    assert_true(titlefooter8,'[Error] Message does not mach the expected')


    sleep(3)
  end
  end
