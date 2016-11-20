class PagesController < ApplicationController

	skip_before_action :require_login, only: [:home]
  	skip_before_action :is_admin, only: [:home]

  def home

	@test =  session.has_key? :user
  	if @test
	  	
	  		
	  		unless current_user.isadmin? 
	  			redirect_to  concerts_utilisateur_index_path 	
	  		end
	  	
	else 
		redirect_to  concerts_utilisateur_index_path
  	end
  		#[:isadmin].exists? && session[:user][:isadmin] == 1
  		# redirect_to  concerts_utilisateur_index_path 
  	#end

  end

end
