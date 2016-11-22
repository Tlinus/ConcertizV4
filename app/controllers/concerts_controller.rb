class ConcertsController < ApplicationController
	def index
		@concerts = Concert.all
		@genres = Genre.all
		@typesplaces = Typesplace.all
		@artistes = Artiste.all
		@places = Place.all
		@seances = Seance.all
		@reservations = Reservation.all
	end
	def new
		@concert = Concert.new
		@genres = Genre.all
	end

	def show
	  	@concert = Concert.find(params[:id])	
		@place = Place.find_by(concert_id: @concert.id)
		if @place
			@typesplace = Typesplace.find(@place.typesplace_id)
			@seance = Seance.find(@place.seance_id)
			@artiste = Artiste.find(@seance.artiste_id)
		end
		@genre = Genre.find(@concert.genre_id)
		@seances = Seance.all
		@typesplaces = Typesplace.all
		@places = Place.all
	end

	def edit
		@concert = Concert.find(params[:id])
	end

	def create
		@concert = Concert.new(concert_params)
		@concert.save
		if @concert.save
			redirect_to concerts_path
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
		def ajout_place(nombre)
		@nombre_max_places += nombre
		self[:places] += nombre
	end
	
	def reservation_place(nombre)
		unless nombre > self[:places]
			self[:places] -= nombre
		end
	end
	
	def modifier_prix(prix)
		self[:prix] = prix
	end
	
	private
	def concert_params
		params.require(:concert).permit(:name, :genre_id, genre_attributes: [:date, :concert_id])
	end
end
