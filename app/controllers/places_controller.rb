class PlacesController < ApplicationController
  def index
	@places = Place.all
  end

  def new
	@places = Place.all
	@place = Place.new
	@concerts = Concert.all
	@typesplaces = Typesplace.all
  end

  def create
	@places = Place.all
	@concerts = Concert.all
	@typesplaces = Typesplace.all
	@place = Place.new(place_params)
	@place.save
	if @place.save
		redirect_to "http://localhost:3000/concerts"
	else
		redirect_to :back
	end
  end
  
  def edit
	@place = Place.find(params[:id])
  end
  
	def update
		@place = Place.find(params[:id])
		
		if @place.update(place_params)
			redirect_to @place
		else 
			render 'edit'
		end
	end
  

  def show
	@place = Place.find(params[:id])
  end
  
	def destroy
		@place = Place.find(params[:id])
		@place.destroy
		
		redirect_to concerts_path
	end
  
  	private
	def place_params
		params.require(:place).permit(:places, :prix, :typesplace_id, :concert_id)
	end

end
