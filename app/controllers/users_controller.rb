class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # before_action :is_admin, only: [:index]
  skip_before_action :require_login, only: [:new, :create, :show, :edit, :update]
  skip_before_action :is_admin, only: [:new, :create, :show, :edit, :update]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    @user = User.new
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  def mes_reservations
    @reservations = Reservation.where(user_id: current_user.id)
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.isadmin = 0
    @user.username = @user.username.capitalize
    @user.firstname = @user.firstname.capitalize
    @user.lastname = @user.lastname.capitalize

    respond_to do |format|
      if @user.save
        #redirect_to( 'user#show', notice: 'Le nouveau compte à bien été créer.')
         format.html { redirect_to @user, notice: 'Le nouveau compte à bien été créer.' }
         format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Le compte à été mis à jour.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Le compte utilisateur à bien été supprimé.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :lastname, :firstname, :username, :isadmin)
  end

end
