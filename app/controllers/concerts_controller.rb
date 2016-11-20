class ConcertsController < ApplicationController
	def index
		@concerts = Concert.all
		@genres = Genre.all
		@typesplaces = Typesplace.all
		@artistes = Artiste.all
		@places = Place.all
		@seances = Seance.all
	end

	def show
		@concert = Concert.find(params[:id])
	end

	def edit
		@concert = Concert.find(params[:id])
		@genres = Genre.all
		@artistes = Artiste.all
		@typesplaces = Typesplace.all
		@seances = Seance.all
	end

	def new
		@concert = Concert.new
		@genre = Genre.new
		@artiste = Artiste.new
		@typesplace = Typesplace.new
		@place = Place.new
		@genres = Genre.all
		@seances = Seance.all
	end

	def create
		@genres = Genre.all
		@concert = Concert.new(concert_params)
		@concert.save
	#	@concert.update(:genre_attributes => {:nom => 'testValue'})
		if @concert.save
			redirect_to @concert
		else
			redirect_to :back
		end
	end
	
	def update
		@concert = Concert.find(params[:id])
		
		if @concert.update(concert_params)
			redirect_to @concert
		else 
			render 'edit'
		end
	end
	
	def destroy
		@concert = Concert.find(params[:id])
		@concert.destroy
		
		redirect_to concerts_path
	end
	
	private
	def concert_params
		params.require(:concert).permit(:name, :genre_id)
	end
end
