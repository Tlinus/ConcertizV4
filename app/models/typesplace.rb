class Typesplace < ApplicationRecord
	has_many :places
	
	def initialize(attributes = {})
		super
		self[:nom] = attributes[:nom]
	end
end
