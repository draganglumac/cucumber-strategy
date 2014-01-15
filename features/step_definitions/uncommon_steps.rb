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

Given(/^I have an unimplemented step$/) do
  runner.verify_unimplemented
end

When(/^I run the unimplemented step$/) do
  runner.run_unimplemented
end

Then(/^I should see it in unimplemented stats$/) do
  runner.check_unimplemented_stats
end
