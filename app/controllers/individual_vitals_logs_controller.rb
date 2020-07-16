class IndividualVitalsLogsController < ApplicationController
  
  def new
    @individual = Individual.find_by_id(params[:individual_id])
    @individual_vitals_log = @individual.individual_vitals_logs.build
  end 


  def create
    @individual_vitals_log = IndividualVitalsLog.new(individual_vitals_log_params)
    redirect_to individual_vitals_logs_path(@individual_vitals_log)
  end 

  def show

  
  end 

  def index

  end 


  private

  def individual_vitals_log_params
    params.require(:individual_vitals_log).permit(:individual_id, :temperature, :bloodpressure, :pulse)
  end 
  
end
