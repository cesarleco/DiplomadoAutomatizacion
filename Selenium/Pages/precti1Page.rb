require 'selenium-webdriver'

class Practice1Page
  @driver
  def initialize driver
    @driver = driver
  end

  def selectFrom(city)
    @driver.find_element(:xpath, "//*[@id=\"src\"]").send_keys(city)
    @driver.find_element(css: '#search > div > div.fl.search-box.clearfix > div > ul > li.selected').click
  end

  def selectTo(city)
    @driver.find_element(id: 'dest').send_keys(city)
    @driver.find_element(css: '#search > div > div:nth-child(3) > div > ul > li.selected').click
  end

  def onward
    @driver.find_element(:xpath, "//*[@id=\"search\"]/div/div[3]/span").click
    @driver.find_element(:xpath, "//div[6]/table/tbody/tr[7]/td[2]").click
  end

  def return
    @driver.find_element(:css, ".icon-return-calendar").click
    @driver.find_element(:xpath, "//div[6]/table/tbody/tr[7]/td[4]").click
  end

  def search
    @driver.find_element(:id, "search_btn").click
  end

  def getBus
    return @driver.find_element(:xpath, '//div[@id="root"]/div/div[2]/div[2]/div/div/span').text
  end

  def getText
    dri = @driver.find_element(:xpath, "//li[@id='8368470']/div/div/div/div/div")
    @driver.action.move_to(dri).perform
    return dri.text
  end

  def getTextSal
    return @driver.find_element(:xpath, '//li[@id="8368470"]/div/div/div/div[2]/div').text
  end

  def getTestLl
    return @driver.find_element(:xpath, '//*[@id="8368470"]/div/div[1]/div[1]/div[4]/div[1]').text
  end
end