require 'selenium-webdriver'

class HomePage
  @driver
  def initialize(driver)
    @driver = driver
  end
  def selectFrom(city)
    @driver.find_element(:id, 'src').send_keys(city)
    @driver.find_element(css: '#search > div > div.fl.search-box.clearfix > div > ul > li.selected').click
  end
  def selectTo(city)
    @driver.find_element(:id, 'dest').send_keys(city)
    @driver.find_element(css: '#search > div > div:nth-child(3) > div > ul > li.selected').click
  end
  def onward
    begin
      @driver.find_element(css: '#search > div > div.fl.search-box.date-box.gtm-onwardCalendar > div').click
      @driver.find_element(css: '#rb-calendar_onward_cal > table > tbody > tr:nth-child(6) > td:nth-child(4)').click
    rescue
      puts "LA FECHA SELECCIONADA YA NO ES ELEGIBLE"
    end
  end
  def return
    @driver.find_element(css: '#search > div > div.fl.search-box.date-box.gtm-returnCalendar > div').click
    @driver.find_element(css: '#rb-calendar_return_cal > table > tbody > tr:nth-child(7) > td.we.day').click
  end
  def search
    @driver.find_element(css: '#search_btn').click
  end
  def getText
    return @driver.find_element(css: '#root > div > div.t-center > div > h3').text
  end
  def buses_num
    begin
      num = @driver.find_element(:xpath, '//div[@id="root"]/div/div[2]/div[2]/div/div/span').text
      return puts num
    rescue Exception
      puts "NO SE ENCONTRÓ EL ELEMENTO ESPERADO"
    end
  end
  def buses_name
    begin
      value1 = @driver.find_element(css: '#\38 368470 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-two.p-right-10.w-30.fl > div.travels.lh-24.f-bold.d-color').text
      value2 = @driver.find_element(css: '#\31 1635702 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-two.p-right-10.w-30.fl > div.travels.lh-24.f-bold.d-color').text
      puts value1, value2
    rescue Exception
      puts "NO SE ENCONTRÓ EL NOMBRE DEL AUTOBÚS"
    end
  end
  def schedule
    begin
      bus1_departure = @driver.find_element(css: '#\38 368470 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-three.p-right-10.w-10.fl > div.dp-time.f-19.d-color.f-bold').text
      bus1_arrival = @driver.find_element(css: '#\38 368470 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-five.p-right-10.w-10.fl > div.bp-time.f-19.d-color.disp-Inline').text
      puts "departure bus 1 =>" + bus1_departure, "arrival =>" + bus1_arrival
      bus1_departure = @driver.find_element(css: '#\31 1635702 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-three.p-right-10.w-10.fl > div.dp-time.f-19.d-color.f-bold').text
      bus1_arrival = @driver.find_element(css: '#\31 1635702 > div > div.clearfix.bus-item-details > div.clearfix.row-one > div.column-five.p-right-10.w-10.fl > div.bp-time.f-19.d-color.disp-Inline').text
      puts "departure bus 2 =>" + bus1_departure, "arrival =>" + bus1_arrival
    rescue Exception
      puts "NO SE ENCONTRÓ LA HORA DE SALIDA Y LLEGADA DE LOS AUTOBUSES"
    end
  end


end