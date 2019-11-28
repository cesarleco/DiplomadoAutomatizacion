require 'yaml'
require 'selenium-webdriver'
require 'test/unit'
require 'json'

class TestAutomationBase < Test::Unit::TestCase
  def setup
    Selenium::WebDriver::Chrome.driver_path="../Drivers/chromedrivermacOS77"
    @@driver=Selenium::WebDriver.for :chrome
    #Implicit wait
    @@driver.manage.timeouts.implicit_wait = 5
    config=YAML.load_file '../ConfigFile/config.yml'

    @@file = File.open('../Dictionary/dictionary.json').read

    @@driver.get(config['appUrl'])
  end

  def teardown
    @@driver.quit()
  end

end
