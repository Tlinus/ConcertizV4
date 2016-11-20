class TypesplacesController < ApplicationController
  def index
	@typesplaces = Typesplace.all
  end

  def new
	@typesplaces = Typesplace.all
	@typesplace = Typesplace.new
	@concert = Concert.new
  end

  def create
	@typesplaces = Typesplace.all
	@typesplace = Typesplace.new(typesplace_params)
	@typesplace.save
	if @typesplace.save
		redirect_to "http://localhost:3000/concerts"
	else
		redirect_to :back
	end
  end
  
  def edit
	@typesplace = Typesplace.find(params[:id])
  end
  
	def update
		@typesplace = Typesplace.find(params[:id])
		
		if @typesplace.update(typesplace_params)
			redirect_to @typesplace
		else 
			render 'edit'
		end
	end
  

  def show
	@typesplace = Typesplace.find(params[:id])
  end
  
	def destroy
		@typesplace = Typesplace.find(params[:id])
		@typesplace.destroy
		
		redirect_to concerts_path
	end
  
  	private
	def typesplace_params
		params.require(:typesplace).permit(:nom)
	end

end
