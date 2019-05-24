# 
# Hooks
# 
require 'watir'
require 'date'

# 
# beforeEach
# 
# Clear all browser cookies
# 
Before do
    $browser.cookies.clear
end

# 
# beforeEach
# 
# Skip the following scenarios based on tag:
# 
# @ignore: General ignore
# @wip: File or test is not ready for testing
# @pending: File or test is pending code changes
# @failing: Test has been marked as failing and requires attention
# 
Before('@ignore or @wip or @pending or @failing') do
    skip_this_scenario
end

# 
# afterEach
# 
# Take a screenshot if the scenario failed
# 
After do |scenario|
    if scenario.failed?
        encoded_image = $browser.screenshot.base64

        # 
        # Embed the screenshot to the Test Artifact
        # 
        embed 'data:image/png;base64,' + encoded_image.to_s, 'image/png'
    end
end

# 
# afterEach
# 
# Close the browser
# 
at_exit do
    $browser.close
end