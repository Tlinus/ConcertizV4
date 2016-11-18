class Seance < ActiveRecord::Base
	belongs_to :concert
	belongs_to :artiste
	
	def initialize(attributes = {})
		super
		self[:date] = attributes[:date]
	end
end
