Feature: Common

	@ios @android
	Scenario: Login successful
		Given that I am on the home page
		When I log in successfully
		Then I am taken to Showcase

	@ios @android
	Scenario: Login failed
		Given that I am on the home page
		When I log in unsuccessfully
		Then I am still on the login screen
		And I am shown an error message

