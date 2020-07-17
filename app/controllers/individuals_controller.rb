class IndividualsController < ApplicationController
   before_action :require_admin, except: [:index, :show]
   
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
    @individuals = Individual.all
  end 

  def show
    @individual = Individual.find(params[:id])
  end 

  private

  def individual_params
    params.require(:individual).permit(:name, :bio)
  end 

  def require_admin
    if !(logged_in? && current_user.admin?)
      flash[:alert] = "Only the manager of Our Home can perform this action"
      redirect_to individuals_path
    end 
  end 
  
end 