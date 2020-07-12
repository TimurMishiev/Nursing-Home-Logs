class PagesController < ApplicationController

  def home
    redirect_to daily_logs_path if logged_in?
  end

  def about
  end
  
end 