Feature: Creating an expert
As an expert in Rails
I want to create an account
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

Scenario: Activating Your Account
Given I have signed up as a user with the first name "Homer", the last name "Simpson", and the email "homer@simpsons.com"
When I am on the activation link sent to "homer@simpsons.com"
Then I should see "Your account is successfully activated"
And I should see "Please fill in your speaker profile"
And I should be on the speaker profile page

