module Capabilities
  class << self

    def Win7_FF54
      caps = Selenium::WebDriver::Remote::Capabilities.firefox()
      caps['platform'] = 'Windows 7'
      caps['version'] = '54'
      caps['name'] = "Firefox 54, Windows 7"

      return caps
    end

    def OSX1012_Safari10
      caps = Selenium::WebDriver::Remote::Capabilities.safari()
      caps['platform'] = 'OS X 10.12'
      caps['version'] = '10'
      caps['name'] = "Safari 10, OS X 10.12"

      return caps
    end

    def OSX1011_Safari10
      caps = Selenium::WebDriver::Remote::Capabilities.safari()
      caps['platform'] = 'OS X 10.11'
      caps['version'] = '10'
      caps['name'] = "Safari 10, OS X 10.11"

      return caps
    end

    def OSX1011_Safari9
      caps = Selenium::WebDriver::Remote::Capabilities.safari()
      caps['platform'] = 'OS X 10.11'
      caps['version'] = '9'
      caps['name'] = "Safari 9, OS X 10.11"

      return caps
    end

    def OSX1012_FF54
      caps = Selenium::WebDriver::Remote::Capabilities.firefox()
      caps['platform'] = 'OS X 10.12'
      caps['version'] = '54'
      caps['name'] = "Firefox 54, OS X 10.12"

      return caps
    end
  end
end

def caps
  # caps = Selenium::WebDriver::Remote::Capabilities.chrome()
  # caps['platform'] = 'Windows 7'
  # caps['version'] = '59'
  # caps['name'] = "Chrome 59, Windows 10, Sauce Connect Enabled"


  # Failed
  caps = Selenium::WebDriver::Remote::Capabilities.safari()
  caps['platform'] = 'OS X 10.12'
  caps['version'] = '10'
  caps['name'] = "Safari 10, OS X 10.12, Sauce Connect Enabled"

  # Failed
  caps = Selenium::WebDriver::Remote::Capabilities.safari()
  caps['platform'] = 'OS X 10.11'
  caps['version'] = '9'
  caps['name'] = "Safari 9, OS X 10.11, Sauce Connect Enabled"

  # Failed
  # caps = Selenium::WebDriver::Remote::Capabilities.safari()
  # caps['platform'] = 'OS X 10.10'
  # caps['version'] = '8'
  # caps['name'] = "Safari 8, OS X 10.10, Sauce Connect Enabled"

  # Failed
  # caps = Selenium::WebDriver::Remote::Capabilities.firefox()
  # caps['platform'] = 'OS X 10.12'
  # caps['version'] = '54'
  # caps['name'] = "Firefox 54, OS X 10.12, Sauce Connect Enabled"

  # # Failed
  # caps = Selenium::WebDriver::Remote::Capabilities.firefox()
  # caps['platform'] = 'OS X 10.11'
  # caps['version'] = '54'
  # caps['name'] = "Firefox 54, OS X 10.11, Sauce Connect Enabled"

  # Failed
  # caps = Selenium::WebDriver::Remote::Capabilities.firefox()
  # caps['platform'] = 'OS X 10.10'
  # caps['version'] = '47'
  # caps['name'] = "Firefox 47, OS X 10.10, Sauce Connect Enabled"

  #Failed
  # caps = Selenium::WebDriver::Remote::Capabilities.firefox()
  # caps['platform'] = 'OS X 10.9'
  # caps['version'] = '47'
  # caps['name'] = "Firefox 47, OS X 10.9, Sauce Connect Enabled"

  # Worked


  return caps
end