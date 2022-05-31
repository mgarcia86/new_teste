# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'cucumber'
require 'selenium-webdriver'
require 'httparty'
require 'pry'
require 'report_builder'


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://account.blip.ai"
    config.default_max_wait_time = 10
end

FileUtils.rm_f(Dir.glob("report/screenshot/*.png"))

date = Time.new.strftime('%d-%m-%Y')
