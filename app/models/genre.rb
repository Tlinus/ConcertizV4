class Genre < ActiveRecord::Base
	has_many :concerts
	
	attr_accessor :nom
	
	def initialize(attributes = {})
		super
		self[:nom] = attributes[:nom]
	end

end
