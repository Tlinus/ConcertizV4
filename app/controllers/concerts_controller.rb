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

	def show
	  	@concert = Concert.find(params[:id])
		@places = Place.all
		@concerts = Concert.all
		@genres = Genre.all
		@typesplaces = Typesplace.all
		@seances = Seance.all
		@artistes = Artiste.all
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
		params.require(:concert).permit(:name, :genre_id)
	end
end
