require '../Pages/footer.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'

class TC_005 < TestAutomationBase

  def test_case_005
  foot = Footer.new(@@driver)
  validation = Assert.new

  foot.textLink1Click()

  res = validation.compareText(@@driver.title, 'Etsy - Tarjetas regalo')
  assert_true(res, "[Error]")
  puts 'Se valida'

  res = validation.validateURL(@@driver, "https://www.etsy.com/mx/giftcards?ref=ftr")
  assert_true(res, "[Error] Home page URL does not match the expected one")
  puts 'Se valida url'

  sleep(5)

  compare1 = validation.compareText(foot.textlink1, 'Regala Etsy')
  assert_true(compare1, '[Error] Message does not match the expected')
  sleep(3)

    foot.textlink2Click()
  res = validation.compareText(@@driver.title, 'Aprende a vender en Etsy')
  assert_true(res, "[Error]")
  puts 'Se valida Aprende a vender en Etsy'
  res = validation.validateURL(@@driver, "https://www.etsy.com/mx/sell?ref=ftr")
  assert_true(res, "[Error] Home page URL does not match the expected one")
  puts 'Se valida url'


  compare2 = validation.compareText(foot.textlink2, 'Hay millones de compradores impacientes por ver lo que pondrás a la venta')
  assert_true(compare2, '[Error] Message does not match the expected')
  sleep(3)

    foot.textlink3Click()

  res = validation.compareText(@@driver.title, 'Etsy - Afiliados')
  assert_true(res, "[Error]")
  puts 'Se valida Aprende a vender en Etsy'

  res = validation.validateURL(@@driver, "https://www.etsy.com/mx/affiliates?ref=ftr")
  assert_true(res, "[Error] Home page URL does not match the expected one")
  puts 'Se valida url'

  compare3 = validation.compareText(foot.textlink3, '¡Únete a nuestro programa de afiliados!')
  assert_true(compare3, '[Error] Message does not match the expected')
  sleep(3)


  foot.textlink4Click()

  res = validation.compareText(@@driver.title, 'Acerca de Etsy')
  assert_true(res, "[Error]")
  puts 'Se valida Acerca de Etsy'

  res = validation.validateURL(@@driver, "https://www.etsy.com/mx/about?ref=ftr")
  assert_true(res, "[Error] Home page URL does not match the expected one")
  puts 'Se valida url'

  compare4 = validation.compareText(foot.textlink4, 'Hacemos que el comercio sea más humano')
  assert_true(compare4, '[Error] Message does not match the expected')
  sleep(3)

  foot.textlink5Click()

  res = validation.compareText(@@driver.title, 'Las normas de la casa | Etsy')
  assert_true(res, "[Error]")
  puts 'Se valida Las normas de la casa | Etsy'

  res = validation.validateURL(@@driver, "https://www.etsy.com/mx/legal?ref=ftr")
  assert_true(res, "[Error] Home page URL does not match the expected one")
  puts 'Se valida url'

  compare5 = validation.compareText(foot.textlink5, 'Las normas de la casa')
  assert_true(compare5, '[Error] Message does not match the expected')
  sleep(5)


  foot.textlink6Click()
  res = validation.compareText(@@driver.title, 'Trabajar en Etsy')
  assert_true(res, "[Error]")
  puts 'Se valida Trabajar en Etsy'

  res = validation.validateURL(@@driver, "https://www.etsy.com/mx/careers?ref=ftr#engineering")
  assert_true(res, "[Error] Home page URL does not match the expected one")
  puts 'Se valida url'

  compare6 = validation.compareText(foot.textlink6, 'Build something that matters.')
  assert_true(compare6, '[Error] Message does not match the expected')
  sleep(5)


  foot.textlink7Click()
  res = validation.compareText(@@driver.title, 'Etsy: Prensa')
  assert_true(res, "[Error]")
  puts 'Se valida Etsy: Prensa'

  res = validation.validateURL(@@driver, "https://www.etsy.com/mx/press?ref=ftr")
  assert_true(res, "[Error] Home page URL does not match the expected one")
  puts 'Se valida url'

  compare7 = validation.compareText(foot.textlink7, 'Prensa')
  assert_true(compare7, '[Error] Message does not match the expected')
  sleep(3)

  foot.textlink8Click()

  res = validation.compareText(@@driver.title, 'Etsy Carbon-Offset Shipping: Delivering a world of good')
  assert_true(res, "[Error]")
  puts 'Se valida Etsy Carbon-Offset Shipping: Delivering a world of good'

  res = validation.validateURL(@@driver, "https://www.etsy.com/mx/impact?ref=ftr")
  assert_true(res, "[Error] Home page URL does not match the expected one")
  puts 'Se valida url'

  compare8 = validation.compareText(foot.textlink8, 'Envío con compensación de las emisiones de carbono: por un mundo mejor')
  assert_true(compare8, '[Error] Message does not match the expected')
  sleep(3)
    end
end