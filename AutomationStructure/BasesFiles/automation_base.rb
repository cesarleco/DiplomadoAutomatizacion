require 'yaml'
require 'selenium-webdriver'
require 'test/unit'

class AutomationBase < Test::Unit::TestCase

  def setup
    Selenium::WebDriver::Chrome.driver_path="../Drivers/chromedriver"
    @@driver = Selenium::WebDriver.for :chrome
    #Implicit wait
    @@driver.manage.timeouts.implicit_wait = 5
    config=YAML.load_file '../ConfigFiles/config.yml'
    @@driver.get(config['appURL2'])

  end

  def  teardown
    @@driver.quit()
  end

end
