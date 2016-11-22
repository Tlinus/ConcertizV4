class SallesController < ApplicationController
  def index
    @salles = Salle.all

  end


  def new
    @salle = Salle.new
  end

  def create
    @salle = Salle.new(salle_params)
    if @salle.save
        redirect_to @salle
    else
        render 'new'

    end


  end

  def show
    @salle = Salle.find(params[:id])
  end

  def update
    salle = Salle.new(salle_params)

  end


  private
    def salle_params
        params.require(:salle).permit(:nom, :adresse)
    end
end
