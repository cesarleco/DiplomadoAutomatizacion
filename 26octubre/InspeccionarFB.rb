require 'selenium-webdriver'

Selenium::WebDriver::Chrome::driver_path= "/Users/hectorfranciscoevangelistaramirez/RubymineProjects/AutomatizacionWebDriver/chromedriver"
caps = Selenium::WebDriver::Chrome::Options.new
caps.add_argument("--start-maximized")
driver = Selenium::WebDriver.for(:chrome, options: caps)
driver.navigate.to"https://www.facebook.com/"

driver.find_element(:xpath, "//*[@id=\"email\"]").send_keys("fbcmqa@gmail.com")
sleep 2
driver.find_element(:xpath, "//*[@id=\"pass\"]").send_keys("Qa123Amc0")
sleep 2
driver.find_element(:xpath, "//*[@id=\"u_0_2\"]").click
sleep 10
driver.find_element(:xpath, "//*[@id=\"userNavigationLabel\"]").click
driver.find_element(:xpath, "//*[@id=\"js_4v\"]/div/div/ul/li[9]/a/span/span").click

sleep 5
