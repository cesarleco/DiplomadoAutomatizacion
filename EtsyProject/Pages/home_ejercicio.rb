require 'selenium-webdriver'

class Home_ejercicio

  @driver
  def initialize(driver)
    @driver =driver
    end
    def getTitle
    return @driver.find_element(css: '#content > div:nth-child(1) > div > h1').text
    end
  def getTitle2
    return @driver.find_element(css:' #content > div.col-group.body-max-width > div > div > a > div > h1').text
  end

  def getFooter1
    return @driver.find_element(css:'#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(1) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end
  def getFooter2
    return @driver.find_element(css:'#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(2) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end
  def getFooter3
    return @driver.find_element(css:'#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(3) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end
  def busqueda(anillo)
    @driver.find_element(id: 'global-enhancements-search-query').send_keys(anillo)
    @driver.find_element(css: '#gnav-search > div > div.wt-input-btn-group.global-enhancements-search-input-btn-group.wt-menu__trigger > button').click
  end
  def getResultado
    return @driver.find_element(css:'#content > div > div.content.bg-white.col-md-12.pl-xs-1.pr-xs-0.pr-md-1.pl-lg-0.pr-lg-0.bb-xs-1 > div > div > div.col-group.pl-xs-0.search-listings-group > div:nth-child(2) > div.bg-white.display-block.pb-xs-2.mt-xs-0 > div > ul > li:nth-child(1) > div > a > div.v2-listing-card__info > div > h2').text
  end
def clickCarrito
  @driver.find_element(css:'#gnav-header-inner > div.flex-shrink-0 > nav > ul > li:nth-child(2) > span > a').click
end
  def getCarrito
    return @driver.find_element(css:'#newempty > div > div > div').text
  end
  def clickEntrar
    @driver.find_element(css:'#gnav-header-inner > div.flex-shrink-0 > nav > ul > li:nth-child(1) > button').click
  end
  def clickInicia
    @driver.find_element(css:'#join-neu-form > div:nth-child(7) > div > div:nth-child(6) > div > button').click
  end
  def error1
    return @driver.find_element(css:'#aria-join_neu_email_field-error').text
  end

  def error2
    return @driver.find_element(css:'#aria-join_neu_password_field-error').text
  end
  def salir
    return @driver.action.send_keys(:escape).perform
  end
  def clickRegresar
    @driver.find_element(css: '#logo > svg').click
  end
  def bajar
    @driver.action.send_keys(:end).perform
  end
  def footer1
    return @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(1) > ul > li:nth-child(1) > a > span').text
  end
  def footer2
    return @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(2) > ul > li:nth-child(1) > a > span').text
  end
  def footer3
    return @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(2) > ul > li:nth-child(4) > a > span').text
  end
  def footer4
    return @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(1) > a > span').text
  end
  def footer5
    return @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(2) > a > span').text
  end
  def footer6
    return @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(4) > a > span').text
  end
  def footer7
    return @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(5) > a > span').text
  end
  def footer8
    return @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(6) > a > span').text
  end
end