class ReservationsController < ApplicationController
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
		redirect_to "http://localhost:3000/concerts"

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
	@reservations = Reservation.all
  end
  
	def destroy
		@reservation = Reservation.find(params[:id])
		@reservation.destroy
		
		redirect_to concerts_path
	end
  
  	private
	def reservation_params
		params.require(:reservation).permit(:nombre_reservations, :place_id )
	end

end
