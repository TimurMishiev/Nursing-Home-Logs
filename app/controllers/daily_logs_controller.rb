class DailyLogsController < ApplicationController

  def show
    @daily_logs = DailyLog.find(params[:id])
  end 

  def index
    @daily_logs = DailyLog.all
  end 

  def show
  end 

  def create
  end 
  
end 