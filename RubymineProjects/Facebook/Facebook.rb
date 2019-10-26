
require 'selenium-webdriver'


Selenium::WebDriver::Chrome.driver_path='/Users/BASSP/RubymineProjects/Facebook/chromedriver'
caps = Selenium::WebDriver::Chrome::Options.new
caps.add_argument("--start-maximized")
driver = Selenium::WebDriver.for(:chrome, options: caps)
driver.navigate.to "http://www.facebook.com"
element = driver.find_element(xpath:"//*[@id=\"email\"]")
element.send_keys "jaja.eric@hotmail.com"
sleep 2
element = driver.find_element(xpath:"//*[@id=\"pass\"]")
element.send_keys "ericksilos15"
sleep 2
element.send_keys :return
#element = driver.find_element(xpath:"//*[@id=\"u_0_4\"]").submit
sleep 15
#element = driver.find_element(css:"div._1mf._1mj").click
#element = driver.find_element(css:"div._1mf._1mj")
#element.send_keys "Prueba segunda de Automatizacion, sobre RubyMine"
#sleep 15
#element = driver.find_element(css:"button._1mf7._4r1q._4jy0._4jy3._4jy1._51sy.selected._42ft").click
#sleep 10
driver.quit