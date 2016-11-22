class SeancesController < ApplicationController
    skip_before_action :require_login, only: [:show]
    skip_before_action :is_admin, only: [:show]

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
	@seance = Seance.new(seance_params)
	@seance.save
	if @seance.save
		redirect_to seance_path(@seance)
	else
		redirect_to :back
	end
  end
  
  def edit
	@seance = Seance.find(params[:id])
  end
  
	def update
		@seance = Seance.find(params[:id])
		
		if @seance.update(seance_params)
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
	def seance_params
		params.require(:seance).permit(:date, :concert_id, :artiste_id)
	end

end


