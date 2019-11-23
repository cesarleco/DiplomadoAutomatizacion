require 'selenium-webdriver'

class Search_Page #Para el tc_002
  @driver
  def initialize(driver)
    @driver = driver
  end

  def search(anillo)
    @driver.find_element(:id, 'global-enhancements-search-query').send_keys(anillo)
    @driver.find_element(css:'#gnav-search > div > div.wt-input-btn-group.global-enhancements-search-input-btn-group.wt-menu__trigger > button > span > svg').click
  end

  def getTextAnillo
  @driver.find_element(css: '#content > div > div.content.bg-white.col-md-12.pl-xs-1.pr-xs-0.pr-md-1.pl-lg-0.pr-lg-0.bb-xs-1 > div > div > div.col-group.pl-xs-0.search-listings-group > div:nth-child(2) > div.bg-white.display-block.pb-xs-2.mt-xs-0 > div > ul > li:nth-child(1) > div > a > div.v2-listing-card__info > div > h2').text
  end

end