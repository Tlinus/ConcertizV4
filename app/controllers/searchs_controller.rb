class SearchsController < ApplicationController
 	skip_before_action :require_login, only: [:new]
  skip_before_action :is_admin, only: [:new]
    def new 
        @param = params[:q]
        @artiste = Artiste.where(nom: @param)
        @concert = Concert.where(name: @param)
        @user = User.where(username: @param)
    end
end
