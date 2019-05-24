require 'watir'
require 'selenium/webdriver'

# 
# Define the global browser and driver objects
# which are used to run automated features
# 
# Each are set to 'nil' to start
# 
$browser = nil
$driver = nil

#
# Determines which browser and driver to utilize
#
if ENV['BROWSER']

    # 
    # Switch based on which environment is passed in
    # 
    case ENV['BROWSER']

    when 'HEADLESS'
        require 'headless'
        $driver = Headless.new
        $driver.start

        caps = Selenium::WebDriver::Remote::Capabilities.firefox(accept_insecure_certs: true)
        $browser ||= Watir::Browser.new :firefox desired_capabilities: caps

    when 'CHROME'
        $browser ||= Watir::Browser.new :chrome

    when 'FIREFOX'
        $browser ||= Watir::Browser.new :firefox

    when 'SAFARI'
        $browser ||= Watir::Browser.new :safari

else

    # 
    # Default to Chrome
    #  
    $browser ||= Watir::Browser.new :chrome

end