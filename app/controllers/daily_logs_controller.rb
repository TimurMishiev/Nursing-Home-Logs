class DailyLogsController < ApplicationController

  def show
    @daily_log = DailyLog.find(params[:id])
  end 

  def index
    @daily_logs = DailyLog.all
  end 

  def new
    @daily_log = DailyLog.new
  end 

  def edit
    @daily_log = DailyLog.find(params[:id])
  end 

  def create
    @daily_log = DailyLog.new(params.require(:daily_log).permit(:shift, :notes))
    if  @daily_log.save 
      flash[:notice] = "notes were created successfully."
    redirect_to daily_log_path(@daily_log) #extracts daily_log's id 
    else
      render 'new'
    end 
  end 

  def update
    @daily_log = DailyLog.find(params[:id])
    if @daily_log.update(params.require(:daily_log).permit(:shift, :notes))
      flash[:notice] = "The Daily Log was updated succesfully"
      redirect_to daily_log_path(@daily_log)
    else 
      render 'edit'
    end 
  end 

  def destroy
    @daily_log = DailyLog.find(params[:id])
    @daily_log.destroy
    redirect_to daily_log_path
  end 
  
end 

