require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

Capybara.configure do |config|
    config.default_driver = :selenium #Firefox
    config.default_max_wait_time = 30
end