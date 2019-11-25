require 'selenium-webdriver'
class HomePage
  @driver
  def initialize(driver)
    @driver = driver
  end

  def titulo1()
    return @driver.find_element(css: '#content > div:nth-child(1) > div > h1').text
  end


  def titulo2()
    return @driver.find_element(css: '#content > div.col-group.body-max-width > div > div > a > div > h1').text
  end


  def titulo3()
    return @driver.find_element(css: '#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(1) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end

  def titulo4()
    return @driver.find_element(css: '#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(2) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end

  def titulo5()
    return @driver.find_element(css: '#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(3) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end

  #Este metodo no sirve de nada
  #def title()
   # return @driver.find_element(css: 'head > title').text
  #end

  def Buscar(palabra)
    @driver.find_element(:id, "global-enhancements-search-query").send_keys(palabra)
  end

  def clickBuscar
    @driver.find_element(css: '#gnav-search > div > div.wt-input-btn-group.global-enhancements-search-input-btn-group.wt-menu__trigger > button > span > svg').click
  end

  def Valorbusqueda
    dri = @driver.find_element(:xpath, "//*[@id=\"content\"]/div/div[1]/div/div/div[2]/div[2]/div[3]/div/ul/li[4]/div/a/div[2]/div/h2")
    @driver.action.move_to(dri).perform
    sleep 2
    return dri.text
  end

  def clickCarrito
    sleep 2
    @driver.find_element(css: '#gnav-header-inner > div.flex-shrink-0 > nav > ul > li:nth-child(2) > span > a > span.etsy-icon > svg > path').click
  end
  def textocarrito()
    return @driver.find_element(css: '#newempty > div > div > div').text
  end

  def clickentrar
    return @driver.find_element(css: '#gnav-header-inner > div.flex-shrink-0 > nav > ul > li:nth-child(1) > button').click
  end

  def clickIniciarSesion
    return @driver.find_element(css: '#join-neu-form > div:nth-child(7) > div > div:nth-child(6) > div > button').click
  end
  def textocorreo
    return @driver.find_element(css: '#aria-join_neu_email_field-error').text
  end
  def textocontraseña
    return @driver.find_element(css: '#aria-join_neu_password_field-error').text
  end
  def salir
    return @driver.action.send_keys(:escape).perform
  end
  def principal
    return @driver.find_element(css: '#logo > svg').click
  end
  def fin
    return @driver.action.send_keys(:end).perform
  end
  def textofooter1
    return @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(1) > ul > li:nth-child(1) > a > span').text
  end
  def textofooter2
    return @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(2) > ul > li:nth-child(1)').text
  end
  def textofooter3
    return @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(2) > ul > li:nth-child(4) > a > span').text
  end
  def textofooter4
    return @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(1)').text
  end
  def textofooter5
    return @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(2)').text
  end
  def textofooter6
    return @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(4) > a > span').text
  end
  def textofooter7
    return @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(5) > a > span').text
  end
  def textofooter8
    return @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(6) > a > span').text
  end






end