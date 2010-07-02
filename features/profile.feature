Feature: Creating an expert
As an expert in Rails
I want to list myself in the directory by creating a profile
So that user groups can find me so I can speak at their events


Scenario: creating a profile
Given I am logged in as an active speaker with the login "homer"
And I have no profile details filled in
When I am on the profile edit page
And I fill in "Bio" with "Something"
And I fill in "URL" with "http://www.github.com/"
And I check "Rails"
And I check "Python"
And I check "C#"
And I check "Perl"
And I check "Javascript"
And I fill in "Postal code" with "54702-4004"
And I fill in "Radius" with "25"
And I press "Save"
Then I should see "Your profile has been updated"
