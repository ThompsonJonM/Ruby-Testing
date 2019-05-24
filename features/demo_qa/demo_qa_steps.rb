Before do
    @demoqa = DemoQA.new
end

# 
# Test:
# Visit the Demo QA Website
# 
Given(/^we visit Demo QA$/) do
    @demoqa.visit
end

Then(/^the Demo QA website should load properly$/) do
    expect($browser.title).to eq('ToolsQA – Demo Website to Practice Automation – Demo Website to Practice Automation')
end