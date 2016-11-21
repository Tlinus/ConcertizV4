class Commentaire < ActiveRecord::Base
	belongs_to :compte
    belongs_to :concert
    belongs_to :user
	
end
