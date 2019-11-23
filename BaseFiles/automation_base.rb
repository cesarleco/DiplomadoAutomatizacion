require 'yaml'
require 'selenium-webdriver'
require 'test/unit'

class TestAutomationBase < Test::Unit::TestCase

  # @drivers_path = '/Users/polosanchez/projects/curso/DiplomadoAutomatizacion/drivers/chromedrivermacOS78'
  @@config = YAML.load_file '/Users/polosanchez/projects/curso/DiplomadoAutomatizacion/ConfigFiles/config.yml'

  def setup

    #Selenium::WebDriver::Chrome.driver_path="../Drivers/chromedrivermacOS78"
    Selenium::WebDriver::Chrome::Service.driver_path = "../drivers/chromedrivermacOS78"
    @@driver = Selenium::WebDriver.for :chrome
    #Implicit wait
    @@driver.manage.timeouts.implicit_wait = 5
    @@driver.get(@@config['url_bus'])
  end

  def teardown
    @@driver.quit()
  end
end