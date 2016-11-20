class Place < ActiveRecord::Base
	belongs_to :typesplace
	belongs_to :concert
	has_many :reservations
	
	def initialize(attributes = {})
		super
		self[:places] = attributes[:places]
		self[:prix] = attributes[:prix]
	end
	
	def ajout_place(nombre)
		self[:places] += nombre
	end
	
	def reservation_place(nombre)
		unless nombre > self[:places]
			self[:places] -= nombre
		end
	end
	
	def modifier_prix(prix)
		self[:prix] = prix
	end
	
end
