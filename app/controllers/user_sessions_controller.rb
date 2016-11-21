class UserSessionsController < ApplicationController

  skip_before_action :require_login, only: [:new, :create, :destroy]
  skip_before_action :is_admin, only: [:new, :create, :destroy]

  def new
  	@user = User.new
  end

  def create
  	if @user = login(params[:email], params[:password])
      session[:user] = @user
      redirect_back_or_to('/home', notice: "Vous êtes maintenant connécté  !")
    else
      flash.now[:alert] = 'La tentative de connection est un echec ! '
      render action: 'new'
    end
  end

  def destroy
  	logout
    redirect_to('/home', notice: 'Vous êtes maintenant déconnécté!')
  end

  private



end
