class Seance < ActiveRecord::Base
	belongs_to :concert
	belongs_to :artiste
	has_many :places
    has_many :salle
	
	def initialize(attributes = {})
		super
		self[:date] = attributes[:date]
	end
end
