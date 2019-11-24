require 'selenium-webdriver'

class Footer
  @driver
  def initialize(driver)
    @driver = driver
  end

  def textLink1Click
    @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(1) > ul > li:nth-child(1) > a > span').click
  end
  def textlink1
    @driver.find_element(css:'#page-title').text
  end
def textlink2Click
  @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(2) > ul > li:nth-child(1) > a > span').click
end
  def textlink2
    @driver.find_element(css:'#content > div.hero.position-relative.text-center.text-white > div.hero-text.vertical-center.position-absolute.position-left.width-full > div > div > h1 > p').text
  end
  def textlink3Click
    @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(2) > ul > li:nth-child(4) > a > span').click
  end
  def textlink3
    @driver.find_element(css:'#content > div > div.hero.wt-bg-white.wt-display-flex-xs.wt-align-items-center.wt-justify-content-center > div > h1').text
  end
  def textlink4Click
    @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(1) > a > span').click
  end
  def textlink4
    @driver.find_element(css:'#content > div > div.statement-slide.statement-slide--marketplace.is-below-viewport > div.inc-wrapper > div.statement-slide__main > div.statement-slide__content.statement-slide__content--with-animation > h1').text
  end
  def textlink5Click
    @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(2) > a > span').click
  end
  def textlink5
    @driver.find_element(css:'#content > div > div.legal-banner-background > div > hgroup > h1').text
  end
  def textlink6Click
    @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(4) > a > span').click
  end
  def textlink6
    @driver.find_element(css:'#content > div > div.video-hero > div.inc-wrapper > div > h1 > span').text
  end
  def textlink7Click
    @driver.find_element(css:'#collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(3) > ul > li:nth-child(5) > a').click
  end
  def textlink7
    @driver.find_element(css:'#content > div.about-banner.loaded > div.content').text
  end
  def textlink8Click
    @driver.find_element(css:'#collage-footer > footer > div > nav > div > div > div:nth-child(3) > ul > li:nth-child(6) > a > span').click
  end
  def textlink8
    @driver.find_element(css:'#content > div > div.impact-header.wt-mb-xs-8.wt-pl-xs-2.wt-pr-xs-2 > div > h1').text
  end
end