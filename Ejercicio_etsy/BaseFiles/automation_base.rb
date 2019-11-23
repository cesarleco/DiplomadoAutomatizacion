require 'yaml'
require 'selenium-webdriver'
require 'test/unit'
require 'json'

class TestAutomationBase < Test::Unit::TestCase

  def setup
    Selenium::WebDriver::Chrome.driver_path = "../Drivers/chromedriver"
    @@driver  = Selenium::WebDriver.for :chrome
    #implicit wait
    @@driver.manage.timeouts.implicit_wait = 5
    config=YAML.load_file '../ConfigFiles/config.yml'

    @@file = File.open('../Dictionary/dictionary.json').read
    @@driver.get(config['appUrl2'])
  end

  def teardown
    @@driver.quit()
  end

end
