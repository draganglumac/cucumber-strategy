include StepRunner

Given(/^I have an uncommon scenario$/) do
  runner.ensure_ucommmon_scenario
end

Given(/^I log in$/) do
  runner.log_in_successfully
end

When(/^I navigate to common page$/) do
  runner.navigate_to_common
end

Then(/^I should see words (.*) and (.*)$/) do |first, second|
  runner.verify_common_page [first, second]
end
