class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to activation_url(@user)
    end
    
  end

  def show
    
  end

end
