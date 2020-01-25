require 'capybara/cucumber'
require 'yaml'
require 'selenium-webdriver'
require 'capybara/cucumber'
require_relative '../../../helpers/utils'
#pass environment variables to control which browser is used for testing. Default is HEADLESS/POLTERGEIST
#usage: firefox=true bundle exec cucumber features/test.feature
case Utils.browser.to_s.downcase
when "chrome" then
	Capybara.default_driver = :selenium_chrome
	Capybara.register_driver :selenium_chrome do |app|
		caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => [ "--start-maximized"]})
		client = Selenium::WebDriver::Remote::Http::Default.new
		client.read_timeout = 540
		Capybara::Selenium::Driver.new(app, {:browser => :chrome, :desired_capabilities => caps, http_client: client})
	end

when "mozilla" then
  Capybara.default_driver = :firefox
  Capybara.register_driver :firefox do |app|
		#Capybara::Selenium::Driver.new(app, :browser => :firefox)
    # permite reproducir contenidos activando silverlight		#Capybara::Selenium::Driver.new(app, :browser => :chrome)
    Capybara::Selenium::Driver.new(
      app,
      :browser => :firefox,
      desired_capabilities: Selenium::WebDriver::Remote::Capabilities.firefox(args: ['headless', 'window-size=1920x1080'])
    )
	end
when "safari" then
	Capybara.default_driver = :safari
	desired_caps = Selenium::WebDriver::Remote::Capabilities.safari(
		{
			platform: 'MAC'
		}
	)
	Capybara.register_driver :safari do |app|
		Capybara::Selenium::Driver.new(app, :browser => :safari, desired_capabilities: desired_caps)
	end
when "phantom" then
	require 'capybara/poltergeist'
	Capybara.default_driver = :poltergeist
	Capybara.javascript_driver = :poltergeist
	options = { js_errors: false, window_size: [1280, 1024],
							timeout: 300,
							phantomjs_logger: StringIO.new,
							logger: nil,
							phantomjs_options: ['--load-images=no', '--ignore-ssl-errors=yes'] }
	Capybara.ignore_hidden_elements = true
	# Capybara.default_selector = :xpath
	Capybara.register_driver(:poltergeist) do |app|
		Capybara::Poltergeist::Driver.new app, options
  end
when "headless-chrome" then
	Capybara.default_driver = :selenium_chrome
	Capybara.register_driver :selenium_chrome do |app|
		options = {
				args: ['headless','no-sandbox','disable-gpu','--start-maximized','--incognito']
    }
		caps = Selenium::WebDriver::Chrome::Options.new(options: options)
		Capybara::Selenium::Driver.new(app, :browser => :chrome, options: caps)
	end

#else "Error"
when "edge" then
	Capybara.default_driver = :edge
	Capybara.register_driver :edge do |app|
		Capybara::Selenium::Driver.new(app, :browser => :edge, :driver_path => 'C:/Program Files/WebDrivers/MicrosoftWebDriver.exe')
	end
when "iexplorer" then
	Capybara.default_driver = :internet_explorer
	Capybara.register_driver :internet_explorer do |app|
		Capybara::Selenium::Driver.new(app, :browser => :internet_explorer, :driver_path => 'C:/Program Files/WebDrivers/IEDriverServer.exe')
	end
else
	raise "Error al ejecutar el Driver: #{Utils.browser}"
end

