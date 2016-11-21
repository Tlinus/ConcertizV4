class Reservation < ActiveRecord::Base
	belongs_to :place
	belongs_to :user
	
	def initialize(attributes = {})
		super
		self[:nombre_reservations] = attributes[:nombre_reservations]
	end

	
end
