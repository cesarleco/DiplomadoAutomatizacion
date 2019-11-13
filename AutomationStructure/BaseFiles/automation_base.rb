require 'yaml'
require 'selenium-webdriver'
require 'test/unit'

class AutomationBase < Test::Unit::TestCase

  def setup #Método donde inicia automatización
    Selenium::WebDriver::Chrome.driver_path="../Drivers/chromedriver.exe"
    @@driver = Selenium::WebDriver.for :chrome
    #Implicit wait
    @@driver.manage.timeouts.implicit_wait = 3
    config=YAML.load_file '../ConfigFiles/config.yml' #Archivo YAML, es de tipo config
    @@driver.get(config['appURL2'])
  end

  def teardown #Cierra todos los hilos (browser) al terminar la automatización, close cierra solo un elemento
    @@driver.quit()
  end
end