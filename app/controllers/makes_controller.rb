class MakesController < ApplicationController
	def index
    @makes = Make.all
  end
	

	def new
		@make = Make.new
	end

	def create
    @make = Make.new(make_params)
    YAML::dump(@make);

    if @make.save
      flash[:notice] = "Make created."
      redirect_to makes_path
    else
      render 'new'
    end
  end

  def show
    @make = Make.find(params[:id])
  end

	def edit
    @make = Make.find(params[:id])
    
  end

  def update
    @make = Make.find(params[:id])
    if @make.update(make_params)
      flash[:notice] = "Make updated."
      redirect_to make_path(@make)
    else
      render 'edit'
    end
  end

  def destroy
    @make = Make.find(params[:id])
    @make.destroy
    flash[:notice] = "Make deleted."
    redirect_to makes_path
  end


  private
  	def make_params
  		params.require(:make).permit(:name, :content, :location, :schedule, :latitude, :longitude)
  	end
end