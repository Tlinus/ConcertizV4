class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  before_action :is_admin, only: [:index]
  skip_before_action :require_login, only: [:new, :create]

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
<<<<<<< HEAD
    @user.isadmin = 0
    @user.username = @user.username.capitalize
    @user.firstname = @user.firstname.capitalize
    @user.lastname = @user.lastname.capitalize
=======
>>>>>>> 7e2fd093a3033b7ccf9c55b07c098a679ab09013

    respond_to do |format|
      if @user.save
        redirect_to(root, notice: 'User was successfully created')
        # format.html { redirect_to @user, notice: 'Le nouveau compte à bien été créer.' }
        # format.json { render :show, status: :created, location: @user }
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
     def is_admin
          require_login
        unless session[:user][:isadmin] == 1
          flash[:alert] = "You must be logged in as admin to access this section"
          redirect_to login_path # halts request cycle
      end
    end
    # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
