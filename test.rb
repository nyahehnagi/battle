require "selenium-webdriver"

def setup
  p "here 1"
  @driver = Selenium::WebDriver.for(:remote, :url => 'http://winhost:4444', capabilities: [Selenium::WebDriver::Remote::Capabilities.chrome]) 
  p "here too"
  #@driver = Selenium::WebDriver.for :chrome

  @base_url = "http://www.google.com/"

  @driver.manage.timeouts.implicit_wait = 30

  @verification_errors = []

end

setup
p "and here"
@driver.get "https://google.com"
p "here"