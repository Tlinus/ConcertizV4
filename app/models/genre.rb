class Genre < ActiveRecord::Base
	has_many :concerts
	#accepts_nested_attributes_for :concert
	
	
	
	def initialize(attributes = {})
		super
		self[:nom] = attributes[:nom]
	end

end
