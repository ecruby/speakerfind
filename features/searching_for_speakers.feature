Feature: Finding a speaker
As a member of a user group
I want to search for a speaker 
So that I can learn something new at my next usergroup meeting

Scenario: Browse by category
Given the category "Cucumber" exists
And "homer" is a speaker on "Cucumber"
When I am on the home page
And I click on "Cucumber"
Then I should see "homer"

