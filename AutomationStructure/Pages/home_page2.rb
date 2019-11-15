require 'selenium-webdriver'

class Home_Page2

  @driver
  def initialize(driver)
    @driver = driver
  end
  def selectFrom(city)
    @driver.find_element(id: 'src').send_keys(city)
    @driver.find_element(css: '#search > div > div.fl.search-box.clearfix > div > ul > li.selected').click
  end
  def selectTo(city)
    @driver.find_element(id: 'dest').send_keys(city)
    @driver.find_element(css: '#search > div > div:nth-child(3) > div > ul > li.selected').click
  end
  def onward()
    @driver.find_element(css: '#search > div > div.fl.search-box.date-box.gtm-onwardCalendar > div').click
    @driver.find_element(css: '#rb-calendar_onward_cal > table > tbody > tr:nth-child(5) > td:nth-child(4)').click
  end
  def return()
    @driver.find_element(css: '#search > div > div.fl.search-box.date-box.gtm-returnCalendar > div').click
    @driver.find_element(css: '#rb-calendar_return_cal > table > tbody > tr:nth-child(6) > td:nth-child(4)').click
  end
  def search()
    @driver.find_element(css: '#search_btn').click
  end
  def getText()
    @driver.find_element(css: '#root > div > div.t-center > div > h3').text
  end
  def getText2()
    @driver.find_element(css: '#root > div > div.srp-data.clearfix > div.sort-results.w-80.fl > div.sort-sec.clearfix.onward > div.w-30.fl > span.w-60.d-block.d-found > span').text
    #@driver.find_element(css:'#\31 1635668 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-two.p-right-10.w-30.fl > div.travels.lh-24.f-bold.d-color').text
  end
end
