# You should edit this file with the browsers you wish to use
# For options, check out http://saucelabs.com/docs/platforms
require "sauce"
require "sauce/capybara"

Capybara.default_driver = :selenium # :selenium or :sauce

Capybara.run_server = true
Capybara.register_driver(:selenium) { |app| Capybara::Selenium::Driver.new(app, { :browser => :firefox }) }

Sauce.config do |config|
  config[:start_tunnel] = false
  config[:browsers] = [
    ["OS X 10.6", "googlechrome", ""],
    ["OS X 10.8", "googlechrome", ""],
    ["Windows 8", "firefox", "23"],
    ["Windows 7", "iehta", "9"]
  ]
end
