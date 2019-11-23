require 'selenium-webdriver'

class Home_Page
  @driver
  def initialize(driver)
    @driver=driver
  end
  def text1home()
    return @driver.find_element(css:'#content > div:nth-child(1) > div > h1').text
  end
  def text2home()
    return @driver.find_element(css:'#content > div.col-group.body-max-width > div > div > a > div > h1').text
  end
  def text3home()
    return @driver.find_element(css:'#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(1) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end
  def text4home()
    return @driver.find_element(css:'#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(2) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end
  def text5home()
    return @driver.find_element(css:'#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(3) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end

  def searchTo(searchtext)
    @driver.find_element(id:'global-enhancements-search-query').send_keys(searchtext)
    @driver.find_element(css:'#gnav-search > div > div.wt-input-btn-group.global-enhancements-search-input-btn-group.wt-menu__trigger > button > span > svg').click
  end
  def text6home()
    return @driver.find_element(css:'#content > div > div.content.bg-white.col-md-12.pl-xs-1.pr-xs-0.pr-md-1.pl-lg-0.pr-lg-0.bb-xs-1 > div > div > div.col-group.pl-xs-0.search-listings-group > div:nth-child(2) > div.bg-white.display-block.pb-xs-2.mt-xs-0 > div > ul > li:nth-child(1) > div > a > div.v2-listing-card__info > div > h2').text
  end

  def car()
    @driver.find_element(css:'#gnav-header-inner > div.flex-shrink-0 > nav > ul > li:nth-child(2) > span > a > span.etsy-icon > svg').click
  end
  def textcar()
    return @driver.find_element(css:'#newempty > div > div > div').text
  end
  def open()
    @driver.find_element(css:'#gnav-header-inner > div.flex-shrink-0 > nav > ul > li:nth-child(1) > button').click
  end
  def login()
    @driver.find_element(css:'#join-neu-form > div:nth-child(7) > div > div:nth-child(6) > div > button').click
  end
  def err1()
    return @driver.find_element(css:'#aria-join_neu_email_field-error').text
    puts @driver.find_element(css:'#aria-join_neu_email_field-error').text
  end
  def err2()
    return @driver.find_element(css:'#aria-join_neu_password_field-error').text
  end

  def sal()
    @driver.action.send_keys(:escape).perform
  end
  def logo()
    @driver.find_element(css:'#logo > svg').click
  end
  def sitext1()
    return @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(1) > ul > li:nth-child(1) > a > span').text
  end
  def tarjetas ()
        @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(1) > ul > li:nth-child(1) > a > span').click
  end
  def sitext2()
  return @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(2) > ul > li:nth-child(1) > a > span').text
  end

  def vender ()
         @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(2) > ul > li:nth-child(1) > a > span').click
  end


  def sitext3()
  return @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(2) > ul > li:nth-child(4) > a > span').text
  end

  def afiliados()
    @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(2) > ul > li:nth-child(4) > a > span').click
  end

  def sitext4()
  return @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(1) > a > span').text
  end

  def inc()
   @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(1) > a > span').click
  end

  def sitext5()
  return @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(2) > a > span').text
  end

   def politicas()
   @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(2) > a > span').click
   end

  def sitext6()
    return @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(4) > a > span').text
  end
  def empleo()
    @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(4) > a > span').click
  end                                                                                                                                                               

  def sitext7()
    return @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(5) > a > span').text
  end
  def prensa()
    @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(5) > a > span').click
  end


  def sitext8()
    return @driver.find_element(css:'#collage-footer > footer > div > nav > div > div > div:nth-child(3) > ul > li:nth-child(6) > a > span').text

  end

  def impacto()
    @driver.find_element(css:'#collage-footer > footer > div > nav > div > div > div:nth-child(3) > ul > li:nth-child(6) > a > span').click
  end                         #collage-footer > footer > div > nav > div > div > div:nth-child(3) > ul > li:nth-child(6) > a > span


  end