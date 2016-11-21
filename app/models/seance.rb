class Seance < ActiveRecord::Base
	belongs_to :concert
	belongs_to :artiste
	has_many :places
	
	def initialize(attributes = {})
		super
		self[:date] = attributes[:date]
	end
end
