require 'rubygems'
require 'rspec'
require 'watir'

@browser = nil

browser = Watir::Browser.new :chrome

Before do
    @browser = browser
end