class LocationsController < ApplicationController
  def index 
    # if params[:search].present?
    #  @locations = Location.near(params[:search], 50, :order => :distance)
    #  else
    @locations = Location.all
    # end
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(strong_params)
    if @location.save
      flash[:notice] = "Location created."
      redirect_to locations_path
    else
      render 'new'
    end
  end


  def show
    @location = Location.find(params[:id])
  end

  private
    def strong_params
      params.require(:locations).permit(:address, :latitude, :longitude)
    end

end


