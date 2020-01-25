require 'yaml'
require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'appium_lib'
require 'screen-recorder'
require_relative '../../../helpers/utils'
require_relative '../../../helpers/results.rb'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/evidence_handler'
require_relative '../../../helpers/js'

#$brow = ENV["BROWSER"]

Before('not @api') do |scenario|
  Capybara.reset_sessions!
  # maximizar browser
  page.driver.browser.manage.window.maximize unless Utils.browser.to_s.downcase == "firefox" || Utils.browser.to_s.downcase == "headless-chrome"
  Info.set_level(:basic)
  Utils.set_country_to(:reset)
  advanced = {
      input:    {
          video_size: '1920x1080',
          #video_size: '1280x800',
          framerate:   60
      },
      output:   {
          r:       30
      }
  }

  name =scenario.name.gsub("(", "_").gsub(")", "_").gsub(" ", "_").to_s
  fecha = Time.now.strftime("%Y%m%d_%H%M").to_s
  #@recorder = ScreenRecorder::Desktop.new(output: "./mp4s/#{name+fecha}.mp4",advanced: advanced)
  #@recorder.start
  Evidence.set scenario
end

After('not @api') do |scenario|
  ReportResults.add_to_counter
  if scenario.passed?
    Evidence.reset_counter
  else
    #@recorder.delete
    Evidence.save_error scenario
    Evidence.reset_counter
  end
  ReportResults.write_to_csv(scenario)
  #@recorder.stop
  clear_cache
  page.driver.quit
end

AfterStep('not @api') do |result, step|
  Evidence.save step.text
end

AfterConfiguration do |config|
  Info.basic "AFTER CONFIG #{config.feature_dirs}"
  Evidence.init_paths
  ReportResults.init_paths
  ReportResults.initialize_csv
end

at_exit do
  Info.basic 'AT EXIT'
end