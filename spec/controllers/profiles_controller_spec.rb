require 'spec_helper'

describe ProfilesController do

  describe "editing a user profile" do
    it "should display the edit profile page" do
      create_user
      get :edit, :id => @user.id
      response.should render_template("edit")
    end
  end
  
end
