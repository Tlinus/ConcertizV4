class Commentaire < ActiveRecord::Base
	belongs_to :compte, :concert 
	
end
