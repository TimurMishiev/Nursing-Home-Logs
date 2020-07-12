class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
   
  def new
    @user = User.new
  end 

  def show
   
    @daily_logs = @user.daily_logs
  end 

  def index
    @users = User.all
  end 

  def edit 
    
  end 

  def update
   
    if @user.update(user_params)
      flash[:notice] = 'You have updated you information!'
      redirect_to @user
    else
      render 'edit'
    end 
  end 

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome to Our Home #{@user.username}, you have successfully signed up "
      redirect_to daily_logs_path
    else
      render 'new'
    end 
  end 

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end 

  def set_user
    @user = User.find(params[:id])
  end 

end 