require 'config'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there'
require 'capybara-screenshot/cucumber'
require 'byebug'
require "rspec"
require "rspec/expectations"
require "webdrivers"

Capybara.default_max_wait_time = 10
Capybara.use_default_driver
Capybara::Screenshot.autosave_on_failure = true
Capybara.save_path = "reports/error_screenshots"
Capybara.default_driver = :selenium
Capybara.default_selector = :xpath

CUCUMBER_PUBLISH_ENABLED=true

Capybara.register_driver :selenium do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {"args" => [ "start-maximized" ],
                                                                                     'prefs' => {
                                                                                         'download.default_directory' => "C:\\Downloads",
                                                                                         'download.directory_upgrade' => true,
                                                                                         'download.prompt_for_download' => false,
                                                                                     }})

  options = {browser: :chrome, desired_capabilities: caps}
  Capybara::Selenium::Driver.new(app, options)
end

# Run chrome in headless mode, just type 'BROWSER=headless'
case ENV['BROWSER']
when 'headless'
  Capybara.default_driver = :selenium_chrome
  Capybara.register_driver :selenium_chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome, args: ['headless']).tap do |driver|
      driver.browser.download_path = "C:\\Downloads"
    end
  end
  puts 'browser = headless_chrome'
end

env = ENV['ENV']
unless env
  Config.load_and_set_settings(Config.setting_files('config', ''))
  env = Settings.default_env
end
Config.load_and_set_settings(Config.setting_files('config', env.downcase))
puts "Select enviroment '#{Settings.name}'"
puts "Enviroment URL: '#{Settings.url}'"

$env_url = Settings.url
