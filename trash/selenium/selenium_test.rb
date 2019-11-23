require "selenium-webdriver"

Selenium::WebDriver::Chrome::driver_path = "/Users/polosanchez/projects/curso/DiplomadoAutomatizacion/drivers/chromedrivermacOS77"
@driver = Selenium::WebDriver.for :chrome

def feis_buc

# Variables
  base_url = 'https://www.facebook.com/'
  user_xpath = '//*[@id="email"]'
  pass_xpath = '//*[@id="pass"]'
  face_user = 'hola'
  face_pass = 'hola'
  btn_log_in = '//*[@id="loginbutton"]'

#begin
  @driver.get(base_url)
  @driver.find_element(:xpath, user_xpath).send_keys(face_user)
  sleep 2
  @driver.find_element(:xpath, pass_xpath).send_keys(face_pass)
  sleep 2
  @driver.find_element(:xpath, btn_log_in).click
  sleep 30
#rescue Exception

end


def red_bus

  # Variables
  base_url = 'https://www.redbus.in/'
  user_xpath = '//*[@id="email"]'
  pass_xpath = '//*[@id="pass"]'
  face_user = 'hola'
  face_pass = 'hola'
  btn_log_in = '//*[@id="loginbutton"]'
  @driver.get(base_url)
  @driver.find_element(:xpath, user_xpath).send_keys(face_user)
  sleep 2
  @driver.find_element(:xpath, pass_xpath).send_keys(face_pass)
  sleep 2
  @driver.find_element(:xpath, btn_log_in).click
  sleep 30



end


#end