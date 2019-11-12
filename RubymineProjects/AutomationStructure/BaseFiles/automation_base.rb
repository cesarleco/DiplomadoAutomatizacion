require 'yaml'
require 'selenium-webdriver'
require 'test/unit'

class TestAutomationBase < Test::Unit::TestCase
  def setup
    Selenium::WebDriver::Chrome.driver_path="../Drivers/chromedriver.exe"
    @@driver=Selenium::WebDriver.for :chrome
    #Implicit wait
    @@driver.manage.timeouts.implicit_wait = 5
    config=YAML.load_file '../ConfigFile/config.yml'
    @@driver.get(config['appUrl2'])
  end

  def teardown
    @@driver.quit()
  end

end
