class Artiste < ActiveRecord::Base
	has_many :seances
	
	attr_accessor :nom
	
	def initialize(attributes = {})
		super
		self[:nom] = attributes[:nom]
	end
	
end
