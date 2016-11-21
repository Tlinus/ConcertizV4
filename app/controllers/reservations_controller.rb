class ReservationsController < ApplicationController
    skip_before_action :is_admin, only: [:new, :create, :show]
  def index
	@places = Place.all
	@typeplaces = Typesplace.all
	@reservations = Reservation.all
  end

  def new
	@places = Place.all
	@reservation = Reservation.new
	@concerts = Concert.all
	@typesplaces = Typesplace.all
  end

  def create
	@reservation = Reservation.new(reservation_params)
	@reservation.save
	if @reservation.save
		@place = Place.find(@reservation.place_id)
		unless @reservation.nombre_reservations > @place.places
			@place.places -= @reservation.nombre_reservations
			@place.save
			if @place.save
				redirect_to @reservation
			end
		end
	end
  end
  
  def edit
	@reservation = Reservation.find(params[:id])
  end
  
	def update
		@reservation = Reservation.find(params[:id])
		
		if @reservation.update(reservation_params)
			redirect_to @reservation
		else 
			render 'edit'
		end
	end
  

  def show
	@reservation = Reservation.find(params[:id])
	
	@place = Place.find(@reservation.place_id)
	@seance = Seance.find(@place.seance_id)
	@artiste = Artiste.find(@seance.artiste_id)
	@concert = Concert.find(@place.concert_id)
	@genre = Genre.find(@concert.genre_id)
  end
  
	def destroy
		@reservation = Reservation.find(params[:id])
		@reservation.destroy
		
		redirect_to concerts_path
	end
  
  	private
	def reservation_params
		params.require(:reservation).permit(:nombre_reservations, :place_id, :user_id )
	end

end
