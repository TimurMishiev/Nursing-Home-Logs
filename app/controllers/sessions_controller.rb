class SessionsController < ApplicationController

  def new

  end 

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user &&  user.authenticate(params[:session][:password])
      session[user_id] = user.id #allows our user to authonticate once , and then remained signed in for all the requests.
      flash[:notice] = "Logged in successfully"
      redirect_to user
    
    else
      flash.now[:alert] = "There was something wrong with your login details"
      render 'new' #we are displaying a new form over again, and not redirecting.
    end 
  end 

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to root_path
  end 

end 