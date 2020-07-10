class DailyLogsController < ApplicationController

  def show
    @daily_log = DailyLog.find(params[:id])
  end 

  def new
  end 
  
end 