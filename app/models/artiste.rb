class Artiste < ActiveRecord::Base
	has_many :seances
	
	def initialize(attributes = {})
		super
		self[:nom] = attributes[:nom]
	end
	
end
