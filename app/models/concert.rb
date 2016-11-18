class Concert < ActiveRecord::Base
	belongs_to :genre
	has_many :seances
	has_many :places
	has_many :commentaires
	
	
	def initialize(attributes = {})
		super
		self[:name] = attributes[:name]
	end
	
	
	
end
