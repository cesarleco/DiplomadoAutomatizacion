require 'selenium-webdriver'


Selenium::WebDriver::Edge.driver_path = "./msedgedriver.exe"
driver = Selenium::WebDriver.for :edge
driver.navigate.to "https://google.com"
element = driver.find_element(name: 'q')
element.send_keys "Hello WebDriver!"
element.submit
sleep(5)
puts driver.title
driver.quit

=begin
Selenium::WebDriver::IE.driver_path = "./IEDriverServer.exe"
driver = Selenium::WebDriver.for :ie
driver.navigate.to "https://google.com"
element = driver.find_element(name: 'q')
element.send_keys "Hello WebDriver!"
element.submit
sleep(5)
puts driver.title
driver.quit
=end

=begin
Selenium::WebDriver::Firefox.driver_path = "./geckodriver.exe"
driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://google.com"
element = driver.find_element(name: 'q')
element.send_keys "Hello WebDriver!"
element.submit
sleep(5)
puts driver.title
driver.quit
=end

=begin
require 'rubygems'
require 'selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path="./chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

driver.get("https://www.google.com/")

driver.find_element(:xpath, "//*[@id=\"tsf\"]/div[2]/div[1]/div[1]/div/div[2]/input").send_keys("ruby code")
sleep(2)
driver.find_element(:xpath, "//*[@id=\"tsf\"]/div[2]/div[1]/div[2]/div[2]/ul/li[1]/div/div[2]/div/span").click()
sleep(2)
=end

