require 'spec_helper'

describe UsersController do

  #Delete these examples and add some real ones
  it "should use UsersController" do
    controller.should be_an_instance_of(UsersController)
  end


  describe "GET 'new'" do
    it "should create an instance of a user object" do
      get 'new'
      assigns(:user).is_a?(User).should == true
    end
  end
  
  describe "POST 'create'" do
    describe "with valid data" do
      
      it "should go to the activation show page" do
        post :create, :user => {
                         :first_name => "Homer",
                         :last_name => "Simpson",
                         :email => "homer@simpsons.com",
                         :password => "1234",
                         :password_confirmation => "1234"
                         }
                         
        response.should redirect_to activation_url(assigns(:user).id)
        
      end
      
      
    end
  end
  
  
end
