require 'selenium-webdriver'







Selenium::WebDriver::Chrome.driver_path='/Users/BASSP/RubymineProjects/Facebook/chromedriver'
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
driver.navigate.to "http://www.redbus.in/"
sleep 5
driver.find_element(xpath:"//*[@id='src']").send_keys("Chenani")
sleep 5
driver.find_element(xpath:"//*[@id='dest']").send_keys("Kumily")
sleep 5
driver.find_element(xpath:"//*[@id='search']/div/div[3]/div/label").click
sleep 5
driver.find_element(xpath:"//*[@id='rb-calendar_onward_cal']/table/tbody/tr[7]/td[2]").click
sleep 5
driver.find_element(xpath:"//*[@id='search']/div/div[4]/div/label").click
sleep 5
driver.find_element(xpath:"//*[@id='rb-calendar_return_cal']/table/tbody/tr[1]/td[3]/button").click
sleep 5
driver.find_element(xpath:"//*[@id='rb-calendar_return_cal']/table/tbody/tr[5]/td[5]").click
sleep 5
driver.find_element(xpath:"//*[@id='search_btn']").click
sleep 5




