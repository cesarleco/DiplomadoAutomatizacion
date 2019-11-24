require 'selenium-webdriver'

class Footer_validations
  @driver
  def initialize(driver)
    @driver = driver
  end

  #First click
  def gift_card_click
    @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(1) > ul > li:nth-child(1) > a > span').click
  end



  def getTextGiftCard
    @driver.find_element(css: '#page-title').text
  end


  #Second click
  def sell_In_Etsy_click
    @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(2) > ul > li:nth-child(1) > a > span').click
  end

  def getTextSellInEtsy
    @driver.find_element(css: '#intro > div > div:nth-child(1) > div > h1').text
  end

  #Third click
  def Afilliated_click
    @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(2) > ul > li:nth-child(4) > a > span').click
  end

  def getTextAfilliated
    @driver.find_element(css: '#content > div > div.hero.wt-bg-white.wt-display-flex-xs.wt-align-items-center.wt-justify-content-center > div > h1').text
  end

  #Fourth click
  def Etsy_Inc_click
    @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(1) > a > span').click
  end

  def getTextEtsyInc
    @driver.find_element(css: '#content > div > div.statement-slide.statement-slide--marketplace.is-below-viewport > div.inc-wrapper > div.statement-slide__main > div.statement-slide__content.statement-slide__content--with-animation > h1').text
  end

  #Fifth click
  def Politicians_click
    @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(2) > a > span').click
  end

  def getTextPoliticians
    @driver.find_element(css: '#content > div > div.legal-banner-background > div > hgroup > h1').text
  end

  #Sixth click
  def Job_click
    @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(4) > a > span').click
  end

  def getTextJob
    @driver.find_element(css: '#content > div > div.video-hero > div.inc-wrapper > div > h1 > span').text
  end

  #Seventh click
  def Press_click
    @driver.find_element(css: '#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(5) > a > span').click
  end

  def getTextPress
    @driver.find_element(css: '#content > div.about-banner.loaded > div.content > h1').text
  end


  #Eigth click
  def Impact_click
    @driver.find_element(css: '#collage-footer > footer > div > nav > div > div > div:nth-child(3) > ul > li:nth-child(6) > a > span').click
  end

  def getTextImpact
    @driver.find_element(css: '#content > div > div.impact-header.wt-mb-xs-8.wt-pl-xs-2.wt-pr-xs-2 > div > h1').text
  end


end