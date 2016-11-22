class CommentairesController < ApplicationController
        skip_before_action :is_admin, only: [:create]

    def create 
        @commentaire = Commentaire.new(commentaires_params)
        @commentaire.save

        if @commentaire.save
            redirect_to :back
        else
            redirect_to root
        end
    end


    private
    def commentaires_params
        params.require(:commentaire).permit(:texte, :titre, :concert_id, :user_id)
    end
end