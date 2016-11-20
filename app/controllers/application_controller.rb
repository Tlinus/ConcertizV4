class ApplicationController < ActionController::Base
  	 protect_from_forgery with: :exception
  	 before_action :require_login 
  	 before_action :is_admin

	private

	def not_authenticated
	  redirect_to login_path, alert: "Veuiller vous connecter."
	end

	def is_admin
        unless(current_user.isadmin?)
          flash[:alert] = "Veuiller vous connecter en tant qu'administrateur."
          redirect_to concerts_utilisateur_index_path # halts request cycle
      end
    end
end
