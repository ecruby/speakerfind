class ActivationsController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end

  def new
    user = User.find_by_email(params[:email])
    redirect_to edit_profile_path(user)
  end
  
end
