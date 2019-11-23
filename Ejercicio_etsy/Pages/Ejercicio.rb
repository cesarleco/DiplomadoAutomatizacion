require 'selenium-webdriver'

class Exercise

    @driver
  def initialize(driver)
    @driver = driver
  end

  def getTex_T()
    return @driver.find_element(css:'#content > div:nth-child(1) > div > h1').text
  end

  def getTex_Public()
    return @driver.find_element(css:'#content > div.col-group.body-max-width > div > div > a > div > h1').text
  end

  def getText_opcion01()
    return @driver.find_element(css:'#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(1) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end

  def getText_opcion02()
    return @driver.find_element(css:'#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(2) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end

  def getText_opcion03()
    return @driver.find_element(css:'#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(3) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end

  def Search(busqueda)
    @driver.find_element(css:'#global-enhancements-search-query').send_keys(busqueda)
    sleep(3)
    @driver.find_element(css:'#gnav-search > div > div.wt-input-btn-group.global-enhancements-search-input-btn-group.wt-menu__trigger > button > span > svg').click
    sleep(3)
  end

  def getText_resSearch()
    return @driver.find_element(css:'#content > div > div.content.bg-white.col-md-12.pl-xs-1.pr-xs-0.pr-md-1.pl-lg-0.pr-lg-0.bb-xs-1 > div > div > div.col-group.pl-xs-0.search-listings-group > div:nth-child(2) > div.bg-white.display-block.pb-xs-2.mt-xs-0 > div > ul > li:nth-child(1) > div > a > div.v2-listing-card__img.position-relative > div > div.placeholder.placeholder-landscape > div > div > div > span').text
  end

  def buyKart()
    @driver.find_element(css:'#gnav-header-inner > div.flex-shrink-0 > nav > ul > li:nth-child(2) > span > a > span.etsy-icon > svg').click
    sleep(3)
  end

    def emptyKart
      return @driver.find_element(css:'#newempty > div > div > div').text
    end


  def popupLogin()
    @driver.find_element(css:'#gnav-header-inner > div.flex-shrink-0 > nav > ul > li:nth-child(1) > button').click
    sleep(2)
    @driver.find_element(css:'#join-neu-form > div:nth-child(7) > div > div:nth-child(6) > div > button').click
    sleep(2)
  end

  def getText_Email()
    return @driver.find_element(css:'#aria-join_neu_email_field-error').text
  end

  def getTex_Pass()
    return @driver.find_element(css:'#aria-join_neu_password_field-error').text
  end

  def back_title()
    @driver.find_element(css:'#logo > svg').click
  end

  def click_foot01
    scr_down = @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(1) > ul > li:nth-child(1) > a > span')
    @driver.action.move_to(scr_down).click.perform
    sleep(2)
  end

  def getText_foot01
    return @driver.find_element(css:'#page-title').text
  end

  def click_foot02
    scr_down = @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(2) > ul > li:nth-child(1) > a > span')
    @driver.action.move_to(scr_down).click.perform
    sleep(2)
  end

  def getText_foot02
    return @driver.find_element(css:'#content > div.hero.position-relative.text-center.text-white > div.hero-text.vertical-center.position-absolute.position-left.width-full > div > div > h1 > p').text
  end

  def click_foot03
    scr_down = @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(2) > ul > li:nth-child(4) > a > span')
    @driver.action.move_to(scr_down).click.perform
    sleep(2)
  end

  def getText_foot03
    return @driver.find_element(css:'#content > div > div.hero.wt-bg-white.wt-display-flex-xs.wt-align-items-center.wt-justify-content-center > div > h1').text
  end

  def click_foot04
    scr_down = @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(1) > a > span')
    @driver.action.move_to(scr_down).click.perform
    sleep(2)
  end

  def getText_foot04
    return @driver.find_element(xpath:'//*[@id="content"]/div/div[2]/div[1]/div[1]/div[2]/h1').text
    #return @driver.find_element(css:'#content > div > div.statement-slide.statement-slide--marketplace.is-above-viewport.is-below-viewport.is-fully-in-viewport > div.inc-wrapper > div.statement-slide__main > div.statement-slide__content.statement-slide__content--with-animation > h1').text
  end

  def click_foot05
    scr_down = @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(2) > a > span')
    @driver.action.move_to(scr_down).click.perform
    sleep(2)
  end

  def getText_foot05
    return @driver.find_element(css:'#content > div > div.legal-banner-background > div > hgroup > h1').text
  end

  def click_foot06
    scr_down = @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(4) > a > span')
    @driver.action.move_to(scr_down).click.perform
    sleep(2)
  end

  def getText_foot06
    return @driver.find_element(css:'#content > div > div.video-hero > div.inc-wrapper > div > h1').text
  end

  def click_foot07
    scr_down = @driver.find_element(css:'#collage-footer > footer > div > nav > div > div > div:nth-child(3) > ul > li:nth-child(5) > a > span')
    @driver.action.move_to(scr_down).click.perform
    sleep(2)
  end

  def getText_foot07
    return @driver.find_element(css:'#content > div.about-banner.loaded > div.content').text
  end

  def click_foot08
    scr_down = @driver.find_element(css:'#collage-footer > footer > div > nav > div > div > div:nth-child(3) > ul > li:nth-child(6) > a > span')
    @driver.action.move_to(scr_down).click.perform
    sleep(2)
  end

  def getText_foot08
    return @driver.find_element(css:'#content > div > div.impact-header.wt-mb-xs-8.wt-pl-xs-2.wt-pr-xs-2 > div > h6').text
  end




end

