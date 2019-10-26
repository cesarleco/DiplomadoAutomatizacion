require "selenium-webdriver"

Selenium::WebDriver::Chrome::driver_path = "/projects/curso/DiplomadoAutomatizacion/drivers/chromedrivermacOS77"
driver = Selenium::WebDriver.for :chrome
driver.get("http://google.com")