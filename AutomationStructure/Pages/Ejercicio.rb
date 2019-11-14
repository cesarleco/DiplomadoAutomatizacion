require 'selenium-webdriver'

class Exercise

  @driver
  def initialize(driver)
    @driver = driver
  end

  def chooseFrom(city)
    # "id:" reliza la busqueda del elemto por ID
    # "css:" realiza la busqueda del elemento por "Selector"
    @driver.find_element(id:'src').send_keys(city)
    @driver.find_element(css:'#search > div > div.fl.search-box.clearfix > div > ul > li.selected').click
    sleep (1)
  end

  def chooseTo(city)
    @driver.find_element(id:'dest').send_keys(city)
    @driver.find_element(css:'#search > div > div:nth-child(3) > div > ul > li.selected').click
    sleep (1)
  end

  def onwardDate()
    @driver.find_element(css:'#search > div > div.fl.search-box.date-box.gtm-onwardCalendar > span').click
    @driver.find_element(css:'#rb-calendar_onward_cal > table > tbody > tr:nth-child(4) > td.current.day').click
    sleep (1)
  end

  def returnDate()
    @driver.find_element(css: '#search > div > div.fl.search-box.date-box.gtm-returnCalendar > div').click
    @driver.find_element(css: '#rb-calendar_return_cal > table > tbody > tr:nth-child(5) > td:nth-child(4)').click
    sleep (1)
  end

  def search()
    @driver.find_element(css: '#search_btn').click
  end

  def gText_NB()
    return @driver.find_element(css:'#root > div > div.srp-data.clearfix > div.sort-results.w-80.fl > div.sort-sec.clearfix.onward > div.w-30.fl > span.w-60.d-block.d-found').text
  end

  def gText_T01()
    return @driver.find_element(css:'#\38 368470 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-two.p-right-10.w-30.fl > div.travels.lh-24.f-bold.d-color').text
  end

  def gText_T02()
    return @driver.find_element(css:'#\31 1635668 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-two.p-right-10.w-30.fl > div.travels.lh-24.f-bold.d-color').text
  end

  def gText_D01()
    return @driver.find_element(css:'#\38 368470 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-three.p-right-10.w-10.fl > div.dp-time.f-19.d-color.f-bold').text
  end

  def gText_A01()
    return @driver.find_element(css:'#\38 368470 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-five.p-right-10.w-10.fl > div.bp-time.f-19.d-color.disp-Inline').text
  end

  def gText_D02()
    return @driver.find_element(css:'#\31 1634785 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-three.p-right-10.w-10.fl > div.dp-time.f-19.d-color.f-bold').text
  end

  def gText_A02()
    return @driver.find_element(css:'#\31 1634785 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-five.p-right-10.w-10.fl > div.bp-time.f-19.d-color.disp-Inline').text
  end

end
