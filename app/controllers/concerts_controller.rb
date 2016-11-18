class ConcertsController < ApplicationController
	def index
		@concerts = Concert.all
	end

	def show
		@concert = Concert.find(params[:id])
	end		
	
	def edit
		@concert = Concert.find(params[:id])
	end	

	def new
		@concert = Concert.new
	end

	def create
		@concert = Concert.new(concert_params)
		if @concert.save
			redirect_to root_url
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
	
	private
	def concert_params
		params.require(:concert).permit(:name, :genre_id)
	end
end
