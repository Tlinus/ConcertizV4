class ReservationsController < ApplicationController
  def index
	@places = Reservation.all
	@reservations = Reservation.all
  end

  def new
	@places = Reservation.all
	@reservation = Reservation.new
	@concerts = Concert.all
	@typesplaces = Typesplace.all
  end

  def create
	@places = Reservation.all
	@concerts = Concert.all
	@typesplaces = Typesplace.all
	@reservation = Reservation.new(reservation_params)
	@reservation.save
	if @reservation.save
		redirect_to "http://localhost:3000/concerts"
	else
		redirect_to :back
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
		params.require(:reservation).permit(:nombre_reservations, :place_id, :compte_id)
	end

end
