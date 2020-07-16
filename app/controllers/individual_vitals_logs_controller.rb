class IndividualVitalsLogsController < ApplicationController
  
  def new
    @individual = Individual.find_by_id(params[:individual_id])
    @vitals_log = @individual.individual_vitals_logs.build
  end

  def create
    @vitals_log = IndividualVitalsLog.new(vitals_log_params)
    if @vitals_log.save
    redirect_to individual_vitals_log_path(@vitals_log)
    else
        render :new
    end 
  end 

 

  def show
    @vitals_log = IndividualVitalsLog.find_by_id(params[:id])
 
  end

  def index
 
  end

  private 

  def vitals_log_params
    params.require(:individual_vitals_log).permit(:individual_id, :temperature, :bloodpressure, :pulse)
  end 
  
end
