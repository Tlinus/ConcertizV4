class ArtistesController < ApplicationController
  def index
	@artistes = Artiste.all
  end

  def new
	@artistes = Artiste.all
	@artiste = Artiste.new
	@concert = Concert.new
  end

  def create
	@artistes = Artiste.all
	@artiste = Artiste.new(artiste_params)
	@artiste.save
	if @artiste.save
		redirect_to "http://localhost:3000/concerts"
	else
		redirect_to :back
	end
  end
  
  def edit
	@artiste = Artiste.find(params[:id])
  end
  
	def update
		@artiste = Artiste.find(params[:id])
		
		if @artiste.update(artiste_params)
			redirect_to @artiste
		else 
			render 'edit'
		end
	end
  

  def show
	@artiste = Artiste.find(params[:id])
  end
  
	def destroy
		@artiste = Artiste.find(params[:id])
		@artiste.destroy
		
		redirect_to concerts_path
	end
  
  	private
	def artiste_params
		params.require(:artiste).permit(:nom)
	end

end
