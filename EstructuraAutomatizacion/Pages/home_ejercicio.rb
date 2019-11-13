require 'selenium-webdriver'

class Home_ejercicio

  @driver
  def initialize(driver)
    @driver =driver
    end
  def selectFrom(city)
    @driver.find_element(id: 'src').send_keys(city)
    @driver.find_element(css: '#search > div > div.fl.search-box.clearfix > div > ul > li.selected').click
  end
  def selectTo(city)
    @driver.find_element(id: 'dest').send_keys(city)
    @driver.find_element(css: '#search > div > div:nth-child(3) > div > ul > li').click
  end

  def onward
    @driver.find_element(:xpath, "//*[@id=\"search\"]/div/div[3]/span").click
    @driver.find_element(:xpath, "//div[6]/table/tbody/tr[7]/td[2]").click
  end

  def return
    @driver.find_element(:xpath,"//*[@id=\"search\"]/div/div[4]/span").click
    @driver.find_element(css: '#rb-calendar_return_cal > table > tbody > tr:nth-child(7) > td.we.day').click
  end

  def search
    @driver.find_element(css: '#search_btn').click
  end
  def getBus
    return @driver.find_element(css: '#root > div > div.srp-data.clearfix > div.sort-results.w-80.fl > div.sort-sec.clearfix.onward > div.w-30.fl > span.w-60.d-block.d-found > span').text
  end
  def getTitulo
    return @driver.find_element(css: '#\38 368470 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-two.p-right-10.w-30.fl > div.travels.lh-24.f-bold.d-color').text
  end
  def getTitle
    return @driver.find_element(css: '#\31 1635702 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-two.p-right-10.w-30.fl > div.travels.lh-24.f-bold.d-color').text
  end
  def getSalida
    return @driver.find_element(css:'#\38 368470 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-three.p-right-10.w-10.fl > div.dp-time.f-19.d-color.f-bold').text
  end
def getLlegada
  return @driver.find_element(css:'#\38 368470 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-five.p-right-10.w-10.fl > div.bp-time.f-19.d-color.disp-Inline').text
end
  end