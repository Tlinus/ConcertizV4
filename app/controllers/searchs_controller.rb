class SearchsController < ApplicationController

    def new 
        @param = params[:q]
        @artiste = Artiste.where(nom: @param)
        @concert = Concert.where(name: @param)
        @user = User.where(username: @param)
    end
end
