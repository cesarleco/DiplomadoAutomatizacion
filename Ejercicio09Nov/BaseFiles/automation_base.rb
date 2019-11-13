require 'yaml' #es neceario para llamar desde basefile las urls
require 'selenium-webdriver'
require 'test/unit'

class TestAutomationBase < Test::Unit::TestCase
  def setup
    Selenium::WebDriver::Chrome.driver_path="../Drivers/chromedriver"
    @@driver = Selenium::WebDriver.for :chrome
#Implicit wait sirve para esperar 5 segundo en lo que busca algo o carga
    @@driver.manage.timeouts.implicit_wait = 5
    config=YAML.load_file '../ConfigFiles/config.yml' #yml es la estancion del archivo donde van a estar las urls
    @@driver.get(config['appUrl2'])
  end

  def teardown #Este es para cerrar el browser desde el admin de tarea close solo cierra la ventana
    @@driver.quit()
  end
end