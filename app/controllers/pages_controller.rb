class PagesController < ApplicationController

	skip_before_action :require_login, only: [:home]
  	skip_before_action :is_admin, only: [:home]

  def home

  	@test =  session.has_key? :user
  	if @test
	  	@test2 = session[:user].has_key? :isadmin
	  	if @test2
	  		@test3 = session[:user][:isadmin] == 1
	  		unless @test3
	  			redirect_to  concerts_utilisateur_index_path 	
	  		end
	  	else 
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
