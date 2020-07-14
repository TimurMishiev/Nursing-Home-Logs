class IndividualsController < ApplicationController

  def new
    @individual = Individual.new

  end 

  def create
     @individual = Individual.new(individual_params)
     if @individual.save
      redirect_to @individual

     else 
      render 'new'
     end 
  end 

  def index
    
  end 

  def show
    @individual = Individual.find(params[:id])
  end 

  private

  def individual_params
    params.require(:individual).permit(:name, :bio)
  end 
  
end 