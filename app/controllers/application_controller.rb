class ApplicationController < ActionController::Base
  	 protect_from_forgery with: :exception
  	 before_action :require_login 
  	 before_action :is_admin

	private

	def not_authenticated
	  redirect_to login_path, alert: "Veuiller vous connecter."
	end

	def is_admin
        unless session[:user][:isadmin] == 1
          flash[:alert] = "Veuiller vous connecter en tant qu'administrateur."
          #redirect_to login_path # halts request cycle
      end
    end
end
