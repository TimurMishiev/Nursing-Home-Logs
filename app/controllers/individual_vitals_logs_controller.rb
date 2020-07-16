class IndividualVitalsLogsController < ApplicationController
  
  def index
    @individual = Individual.find_by_id(params[:individual_id])
    @vitals_log = @individual.build_vitals_log
  end


  
  def new
    @individual_vitals_log = IndividualVitalsLog.new
  end

  
end
