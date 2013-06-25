Feature: Signup
In order to use the app
As a boot
I want to create an account

Scenario: As a boot
Given I go to the "/" page
And I fill in Username with "Molly" and Password with "password" and Password Confirmation with "password"
And I click "Signup"
Then I should see "Molly" and "Boot"