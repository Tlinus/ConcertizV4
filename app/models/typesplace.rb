class Typesplace < ApplicationRecord
	has_many :places
	
	attr_accessor :nom
	def initialize(attributes = {})
		super
		self[:nom] = attributes[:nom]
	end
end
