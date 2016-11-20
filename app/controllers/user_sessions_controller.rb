class UserSessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]
  def new
  	@user = User.new
  end

  def create
  	if @user = login(params[:email], params[:password])
      session[:user] = @user
      redirect_back_or_to(:users, notice: "Vous êtes maintenant connécté en tant que #{current_user.username} !")
    else
      flash.now[:alert] = 'La tentative de connection est un echec ! '
      render action: 'new'
    end
  end

  def destroy
  	logout
    redirect_to(:users, notice: 'Vous êtes maintenant déconnécté!')
  end

  private



end
