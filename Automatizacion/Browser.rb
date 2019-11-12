require 'selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path="/Users/BASSP/RubymineProjects/Automatizacion/chromedriver"
driver = Selenium::WebDriver.for :chrome
driver.get("https://www.google.com.mx")

#driver.find_element(:xpath, “//*[@id=\“tsf\“]/div[2]/div[1]/div[1]/div/div[2]/input”).send_keys("ruby code")
#sleep 15



element = driver.find_element(:name, 'q')
element.send_keys "Aguascalientes"
#element.send_keys(:xpach, “//*[@id=\“tsf\“]/div[2]/div[1]/div[2]/div[2]/ul/li[1]/div/div[2]/div/span").click
#element.element(:xpath, “//*[@id=\“tsf\“]/div[2]/div[1]/div[2]/div[2]/ul/li[1]/div/div[2]/div/span”).click


#element.submit
#sleep 15
#driver.quit


