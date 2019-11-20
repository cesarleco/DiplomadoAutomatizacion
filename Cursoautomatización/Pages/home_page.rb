require 'selenium-webdriver'
class HomePage
  @driver
  def initialize(driver)
    @driver = driver
  end
  def selectFrom(city)
    @driver.find_element(id: 'src').send_keys(city)
    @driver.find_element(css: '#search > div > div.fl.search-box.clearfix > div > ul li.selected').click

  end
  def selectTo(city)
    @driver.find_element(id: 'dest').send_keys(city)
    @driver.find_element(css: '#search > div > div:nth-child(3) > div > ul > li.selected').click
  end
  def onward()
    @driver.find_element(css:'#search > div > div.fl.search-box.date-box.gtm-onwardCalendar > div > label').click
    @driver.find_element(css:'#rb-calendar_onward_cal > table > tbody > tr:nth-child(4) > td.current.day').click
  end
  def return()
    @driver.find_element(css: '#search > div > div.fl.search-box.date-box.gtm-returnCalendar > div > label').click
    @driver.find_element(css: '#rb-calendar_return_cal > table > tbody > tr:nth-child(6) > td:nth-child(2)').click
  end
  def search()
    @driver.find_element(css: '#search_btn').click
  end
  def getText()
    return @driver.find_element(css: '#root > div > div.t-center > div > h3').text
  end
  def getBus()
    return @driver.find_element(css: '#root > div > div.srp-data.clearfix > div.sort-results.w-80.fl > div.sort-sec.clearfix.onward > div.w-30.fl > span.w-60.d-block.d-found > span').text
  end
  def getTit1()
    return @driver.find_element(css:'#\38 368470 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-two.p-right-10.w-30.fl > div.travels.lh-24.f-bold.d-color').text
  end
  def getTit2()
    return @driver.find_element(css:'#\31 1634785 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-two.p-right-10.w-30.fl > div.travels.lh-24.f-bold.d-color').text
  end
  def getDep1()
    return @driver.find_element(css:'#\38 368470 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-three.p-right-10.w-10.fl > div.dp-time.f-19.d-color.f-bold').text
  end
  def getArr1()
    return @driver.find_element(css:'#\38 368470 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-five.p-right-10.w-10.fl > div.bp-time.f-19.d-color.disp-Inline').text
  end
  def getDep2()
    return @driver.find_element(css:'#\31 1634785 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-three.p-right-10.w-10.fl > div.dp-time.f-19.d-color.f-bold').text
  end
  def getArr2()
    return @driver.find_element(css:'#\31 1634785 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-five.p-right-10.w-10.fl > div.bp-time.f-19.d-color.disp-Inline').text
  end
  def nodo1()
    @driver.find_element(css:'#rh_header > div > div > a').click
  end
  def nodo2()
    @driver.find_element(css:'#redBus').click
  end
  def nodo3()
    @driver.find_element(css:'body > header > div > div > nav.product-nav.mob-hide > a:nth-child(2)').click
  end
  def nodo4()
    @driver.find_element(css:'#redBus\ Hotels').click
  end
  def nodo5()
    @driver.find_element(css:'#rh_header > div.main-header-row > nav > div.lh > div > nav > ul > li:nth-child(4) > a').click
  end
  def nodo6()
    @driver.find_element(css:'#page_main_header > nav > ul > li:nth-child(5) > a').click
  end
  def getNodo1()
    return @driver.find_element(css:'#redBus').text
  end
  def getNodo2()
    return @driver.find_element(css:'body > div.search-container > div.search-h1 > h1').text
  end
  def getNodo3()
    return @driver.find_element(css:'#mBWrapper > main > div.banner-wrapper > div > div > h1').text
  end
  def getNodo4()
    return @driver.find_element(css:'#rh_header > div.main-header-row > nav > div.lh > div > nav > ul > li:nth-child(3) > a').text
  end
  def getNodo5()
    return @driver.find_element(css:'#widget_header1 > span').text
  end
  def getNodo6()
    return @driver.find_element(css:'#home-wrapper > div > div > div > div > div.opening > h1').text
  end
end