class ConcertsUtilisateurController < ApplicationController

	skip_before_action :require_login, only: [:index, :show]
  	skip_before_action :is_admin, only: [:index, :show]
  	
  def index
  	@concerts = Concert.all
	@genres = Genre.all
	@artistes = Artiste.all
  end

  def show
      @concert = Concert.find(params[:id])
      @places = Place.all
      @concerts = Concert.all
      @genres = Genre.all
      @typesplaces = Typesplace.all
      @seances = Seance.all
      @artistes = Artiste.all
      @commentaires = Commentaire.where(concert_id: params[:id])
      @commentaire = Commentaire.new

  end

    def  newCommentaire

    end
end
