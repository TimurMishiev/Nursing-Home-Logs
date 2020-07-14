class DailyActivitiesController < ApplicationController

  def new
    @daily_activity = DailyActivity.new
  end 

  def create
    @daily_activity = DailyActivity.new(daily_activity_params)
    if @daily_activity.save
      flash[:notice] = "Activity was successfully created"
      redirect_to @daily_activity

    else 
      render 'new'
    end 
  end 

  def index
    @daily_activities = DailyActivity.all
  end 

  def show
    @daily_activity = DailyActivity.find(params[:id])
  end 

  private

  def daily_activity_params
    params.require(:daily_activity).permit(:title, :description)

  end 

  
  
end 