Given /^I have signed up as a user with the first name "([^\"]*)", the last name "([^\"]*)", and the email "([^\"]*)"$/ do |firstname, lastname, email|
  @user = User.create :first_name => firstname,
                      :last_name => lastname,
                       :password => "password",
                       :password_confirmation => "password",
                       :email => email
                       
                
end
