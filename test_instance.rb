class TestInstance

  require "selenium-webdriver"
  require 'selenium/webdriver/remote/http/persistent'

  attr_reader :session_name
  attr_reader :job_id, :exception, :session_start_time, :url_command_send_time, :url_command_finished_time, :exception_thrown_time
  attr_reader :errored, :succeeded

  def initialize capabilities
    @capabilities = capabilities
    @session_name = @capabilities["name"]
  end

  def start
    @session_start_time = Time.now

    http_client = ::Selenium::WebDriver::Remote::Http::Persistent.new
    http_client.timeout = 120
    driver = Selenium::WebDriver.for :remote, :url => endpoint,  :desired_capabilities => @capabilities, :http_client => http_client

    @job_id = driver.session_id

    @url_command_send_time = Time.now

    driver.navigate.to "http://www.google.com"
    @url_command_finished_time = Time.now

    @succeeded = true

  rescue => e
    @exception_thrown_time = Time.now
    @exception = e
    @errored = true
  ensure
    driver.quit
  end

  def load_duration
    end_time = @url_command_finished_time || @exception_thrown_time
    end_time - @url_command_send_time
  end

  def status
    @succeeded ? "succeeded" : "failed"
  end

  def un
    ENV["SAUCE_USERNAME"]
  end

  def pw
    ENV["SAUCE_ACCESS_KEY"]
  end

  def auth
    "#{un}:#{pw}"
  end

  def server
    "ondemand.saucelabs.com"
  end

  def port
    80
  end

  def endpoint
    "http://#{auth}@#{server}:#{port}/wd/hub"
  end
end