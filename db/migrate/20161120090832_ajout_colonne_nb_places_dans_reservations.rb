class AjoutColonneNbPlacesDansReservations < ActiveRecord::Migration[5.0]
  def change
	add_column :reservations, :nombre_reservations, :integer
  end
end
