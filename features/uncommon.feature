Feature: Uncommon Scenarios

	@ios @android
	Scenario: Example scenario
		Given I have an uncommon scenario
		And I log in
		When I navigate to common page
		Then I should see words common and rage

	@ios @android
	Scenario: Unimplemented scenario
		Given I have an unimplemented step
		When I run the unimplemented step
		Then I should see it in unimplemented stats

