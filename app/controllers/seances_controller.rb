class SeancesController < ApplicationController
  def index
	@seances = Seance.all
  end

  def new
	@seances = Seance.all
	@seance = Seance.new
	@concerts = Concert.all
	@artistes = Artiste.all
  end

  def create
	@seances = Seance.all
	@concerts = Concert.all
	@artistes = Artiste.all
	@seance = Seance.new(place_params)
	@seance.save
	if @seance.save
		redirect_to "http://localhost:3000/concerts"
	else
		redirect_to :back
	end
  end
  
  def edit
	@seance = Seance.find(params[:id])
  end
  
	def update
		@seance = Seance.find(params[:id])
		
		if @seance.update(place_params)
			redirect_to @seance
		else 
			render 'edit'
		end
	end

  def show
	@seance = Seance.find(params[:id])
	@seances = Seance.all
	@concerts = Concert.all
	@artistes = Artiste.all
  end
  
	def destroy
		@seance = Seance.find(params[:id])
		@seance.destroy
		
		redirect_to concerts_path
	end
  
  	private
	def place_params
		params.require(:seance).permit(:seances, :date, :concert_id, :artiste_id)
	end

end
