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
end
