class UsersController < ApplicationController
   
  def new
    @user = User.new
  end 

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to Our Home, you have successfully signed up "
      redirect_to daily_logs_path
    else
      render 'new'
    end 
  end 

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end 

end 