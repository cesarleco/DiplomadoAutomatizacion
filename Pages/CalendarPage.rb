require 'selenium-webdriver'
require 'yaml'

class CalendarPage

  @driver
  @@config = YAML.load_file '/Users/polosanchez/projects/curso/DiplomadoAutomatizacion/ConfigFiles/config.yml'

  def initialize(driver)

    @driver = driver

  end

  def select_from(city)

    @driver.find_element(id: @@config['from_id']).send_keys(city)
    @driver.find_element(css: @@config['from_locator_css']).click

  end

  def select_to(city)

    @driver.find_element(id: 'dest').send_keys(city)
    @driver.find_element(css: '#search > div > div:bth-child(3) > div > ul > li.selected').click

  end

  def onward_date

    @driver.find_element(xpath: '//*[@id="search"]/div/div[3]/div/label').click
    @driver.find_element(css: '#rb-calendar obward cal > table > tbody > tr:nth-child(5) > td:nth-child(4)')

  end

  def return_date

    @driver.find_element(css: '#search > div > div.fl.search-box.date-box.gtm-returnCalendar > div').click
    @driver.find_element(css: '#rb-calendar_return_cal > table  > table > tbody > tr:nth-child(6) > td:nth-child(4)')

  end

  def search

    @driver.find_element(css: '#search_btn').click

  end


  def get_text

    @driver.find_element(css: '#root > div > div.t-center > div > h3').text

  end


end