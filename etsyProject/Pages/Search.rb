require 'selenium-webdriver'

class Search
  @driver
  def initialize(driver)
    @driver = driver
  end

  def find (ring)
    @driver.find_element(:id, "global-enhancements-search-query").send_keys(ring)
    @driver.find_element(css: '#gnav-search > div > div.wt-input-btn-group.global-enhancements-search-input-btn-group.wt-menu__trigger > button').click
    sleep(25)

    def getText
      @driver.find_element(css: '#content > div > div.content.bg-white.col-md-12.pl-xs-1.pr-xs-0.pr-md-1.pl-lg-0.pr-lg-0.bb-xs-1 > div > div > div.col-group.pl-xs-0.search-listings-group > div:nth-child(2) > div.bg-white.display-block.pb-xs-2.mt-xs-0 > div > ul > li:nth-child(1) > div > a > div.v2-listing-card__info > div > h2').text
    end


  end

end