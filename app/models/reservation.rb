class Reservation < ActiveRecord::Base
	belongs_to :place
	belongs_to :compte
end
