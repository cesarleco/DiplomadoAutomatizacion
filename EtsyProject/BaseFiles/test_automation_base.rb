require 'yaml'
require 'selenium-webdriver'
require 'test/unit'
require 'json'
class TestAutomationBase < Test::Unit::TestCase
  def setup
    Selenium::WebDriver::Chrome.driver_path="../Drivers/chromedriver"
    @@driver = Selenium::WebDriver.for :chrome
    @@driver.manage.timeouts.implicit_wait = 5
    #Hace llamar lo que contiene el archivo pasandolo a una variable YML
    config = YAML.load_file '../ConfigFiles/config.yml'
    @@file = File.open('../Dictionary/dictionary.json').read
    @@driver.get(config['appUrl'])

  end

  def teardown
    @@driver.quit()
  end
end