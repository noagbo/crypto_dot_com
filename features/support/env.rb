# frozen_string_literal: true

require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'webdrivers'

drivers = { 'chrome' => :selenium_chrome, 'chrome_headless' => :selenium_chrome_headless, 'firefox' => :selenium,
            'firefox_headless' => :selenium_headless }

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end

Capybara.register_driver :selenium_headless do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.register_driver :selenium_chrome_headless do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

# Capybara.save_and_open_screenshot

Capybara.configure do |config|
  config.default_driver = drivers[ENV['SELENIUM_DRIVER']] || :selenium
  config.run_server        = false
  config.default_selector  = :css
  config.default_max_wait_time = 30
  config.app_host = 'https://crypto.com'
end
