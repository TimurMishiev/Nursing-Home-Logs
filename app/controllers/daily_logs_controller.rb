class DailyLogsController < ApplicationController
    before_action :set_daily_log, only: [:show, :edit, :update, :destroy]

  def show
    #calls the private method
  end 

  def index
    @daily_logs = DailyLog.all
  end 

  def new
    @daily_log = DailyLog.new
  end 

  def edit
    #calls the private method
  end 

  def create
    @daily_log = DailyLog.new(daily_log_params) #calls the private method
    @daily_log.user = current_user

    if  @daily_log.save 
      flash[:notice] = "notes were created successfully."
    redirect_to daily_log_path(@daily_log) #extracts daily_log's id 
    else
      render 'new'
    end 
  end 

  def update
  
    if @daily_log.update(daily_log_params) #calls a private method
      flash[:notice] = "The Daily Log was updated succesfully"
      redirect_to daily_log_path(@daily_log)
    else 
      render 'edit'
    end 
  end 

  def destroy
     #calls the private method (set_daily_log)
    @daily_log.destroy
    redirect_to daily_log_path
  end 

  private

  def set_daily_log
    @daily_log = DailyLog.find(params[:id])
  end 

  def daily_log_params
    params.require(:daily_log).permit(:shift, :notes)
  end 
  
end 

