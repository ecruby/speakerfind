Feature: Creating an expert
As an expert in Rails
I want to list myself in the directory
So that user groups can find me so I can speak at their events


Scenario: Sign up as an expert
Given I am on the home page
And I press "I'm a speaker"
Then I should be on the signup page

When I fill in "First name" with "Homer"
And I fill in "Last name" with "Simpson"
And I fill in "Email" with "homer@simpsons.com"
And I fill in "Password" with "123456"
And I fill in "Password confirmation" with "123456"
And I press "Create account"
Then I should see "Thank you for signing up"
And I should see "Please activate your account by following the link in your email."

