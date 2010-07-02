require 'spec_helper'

describe ActivationsController do

  describe "viewing the activation message" do
    it "should display the activation message" do
      create_user
      
      get :show, :id => @user.id
      response.should render_template("show")
    end
  end
  
  describe "activating a user" do
    it "should redirect to the profile edit page with a successful activation" do
      
      create_user
      
      response.should redirect_to edit_profile_url
    end
  end

end

def create_user
  @user = User.create :first_name => "homer", :password => "1234",
                      :password_confirmation => "1234",
                      :email => "homer@simpsons.com"
end
