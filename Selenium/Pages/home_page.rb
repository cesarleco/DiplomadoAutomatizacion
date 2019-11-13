require 'selenium-webdriver'
class HomePage
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
    @driver.find_element(:xpath, "//*[@id='search']/div/div[3]/span").click
    @driver.find_element(:xpath, "//*[@id=\"rb-calendar_onward_cal\"]/table/tbody/tr[6]/td[7]").click
  end

  def return
    @driver.find_element(css: '#search > div > div.fl.search-box.date-box.gtm-returnCalendar > span').click
    @driver.find_element(:xpath, "//*[@id=\"rb-calendar_return_cal\"]/table/tbody/tr[7]/td[6]").click

  end

  def search
    @driver.find_element(css: '#search_btn').click
  end

  def getNumau
    return @driver.find_element(css: '#root > div > div.srp-data.clearfix > div.sort-results.w-80.fl > div.sort-sec.clearfix.onward > div.w-30.fl > span.w-60.d-block.d-found > span').text
  end

  def getSrstravels
    return @driver.find_element(css: '#\38 368470 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-two.p-right-10.w-30.fl > div.travels.lh-24.f-bold.d-color').text
  end
  def getNational
    return @driver.find_element(css: '#\31 1634785 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-two.p-right-10.w-30.fl > div.travels.lh-24.f-bold.d-color').text
  end

  def getDeparture
    return @driver.find_element(css: '#\38 368470 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-three.p-right-10.w-10.fl > div.dp-time.f-19.d-color.f-bold').text
  end
  def getArrival
    return @driver.find_element(css: '#\38 368470 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-five.p-right-10.w-10.fl > div.bp-time.f-19.d-color.disp-Inline').text
  end

end
