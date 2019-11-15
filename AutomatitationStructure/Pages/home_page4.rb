require 'selenium-webdriver'
class Home_page4
  @driver
  def initialize(driver)
    @driver = driver
  end

  def selectFrom
     @driver.find_element(css: '#rh_header > div.main-header-row > nav > div.lh > div > nav > ul > li:nth-child(1) > a').click
  end
  <div class="dib-vm pg-sub-hdr"><nav class="product-nav"><ul><li><a href="https://www.redbus.in/bus-tickets/" title="redBus.in">BUSES</a></li><li><a href="https://www.redbus.in/rPool/">rPool <sup style="font-weight: bold;">New</sup></a></li><li><a href="https://www.redbus.in/hotels/" title="redBus Hotels" class="selected">HOTELS</a></li><li><a href="https://www.redbus.in/bushire/?utm_source=website&amp;utm_medium=referral&amp;utm_campaign=Hotels_homepage_bushire_banner" title="redBus Bus Hire">BUS HIRE</a></li><li><a href="https://www.redbus.in/pilgrimages/" title="pilgrimages">PILGRIMAGES  <!-- <sup style="text-transform:lowercase;"><i>beta</i></sup> --></a></li><!-- <li><a href="https://www.redbus.in/weekend-getaways/" title="Weekend">WEEKEND GETAWAYS <sup>beta</sup></a></li> --></ul></nav></div>


  def selectTo(city)
    @driver.find_element(id: 'dest').send_keys(city)
    @driver.find_element(css: '#search > div >div:nth-child(3) > div > ul > li.selected').click
  end
  def onward()
    @driver.find_element(css: '#search > div > div.fl.search-box.date-box.gtm-onwardCalendar > div').click
    @driver.find_element(css: '#rb-calendar_onward_cal > table > tbody > tr:nth-child(5) > td:nth-child(4)').click
  end
  def return()
    @driver.find_element(css: '#search > div > div.fl.search-box.date-box.gtm-returnCalendar > div').click
    @driver.find_element(css: '#rb-calendar_return_cal > table > tbody > tr:nth-child(6) > td:nth-child(4)').click
    #
  end
  def search
  @driver.find_element(css: '#search_btn').click
  end

  def getText
    return @driver.find_element(css: '#root > div > div.srp-data.clearfix > div.sort-results.w-80.fl > div.sort-sec.clearfix.onward > div.w-30.fl > span.w-60.d-block.d-found > span').text
  end
  def getTextA
    return @driver.find_element(css: '#\38 368754 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-two.p-right-10.w-30.fl > div.travels.lh-24.f-bold.d-color').text
  
  end
  def getTextB
    return @driver.find_element(css: '#\39 927626 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-two.p-right-10.w-30.fl > div.travels.lh-24.f-bold.d-color').text
  end
  def getTextC
    return @driver.find_element(css: '#\38 368754 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-three.p-right-10.w-10.fl > div.dp-time.f-19.d-color.f-bold').text
  end
  def getTextD
    return @driver.find_element(css: '#\38 368754 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-three.p-right-10.w-10.fl > div.dp-time.f-19.d-color.f-bold').text
  end

end