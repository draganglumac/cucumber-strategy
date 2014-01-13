include StepRunner

Given(/^that I am on the home page$/) do
  runner.ensure_on_home_page
end

When(/^I log in successfully$/) do
  runner.log_in_successfully
end

Then(/^I am taken to Showcase$/) do
  runner.verify_on_showcase
end

When(/^I log in unsuccessfully$/) do
  runner.log_in_unsuccessfully
end

Then(/^I am still on the login screen$/) do
  runner.verify_login_screen
end

Then(/^I am shown an error message$/) do
  runner.verify_login_error_message_present
end
