class IndividualVitalsLogsController < ApplicationController
  
  def new
    @individual = Individual.find_by_id(params[:individual_id])
    @individual_vitals_log = @individual.individual_vitals_logs.build
  end 


  def create
    @individual_vitals_log = IndividualVitalsLog.new(individual_vitals_log_params)
    if @individual_vitals_log.save
    redirect_to individual_vitals_logs_path(@individual_vitals_log)
    else
      render :new
    end
  end 

  def show
    @individual_vitals_log = IndividualVitalsLog.new(individual_vitals_log_params)
  end 

  def index
    if @individual = Individual.find_by_id(params[:individual_id])
      @individual_vitals_logs = @individual.individual_vitals_logs

    else
      @individual_vitals_logs = IndividualVitalsLog.all
    end 
  end 


  private

  def individual_vitals_log_params
    params.require(:individual_vitals_log).permit(:individual_id, :temperature, :bloodpressure, :pulse)
  end 
  
end
