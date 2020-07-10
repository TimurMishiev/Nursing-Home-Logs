class DailyLogsController < ApplicationController

  def show
    @daily_log = DailyLog.find(params[:id])
  end 

  def index
    @daily_logs = DailyLog.all
  end 

  def new
  end 

  def create
  end 
  
end 