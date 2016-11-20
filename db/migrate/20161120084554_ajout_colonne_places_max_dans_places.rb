class AjoutColonnePlacesMaxDansPlaces < ActiveRecord::Migration[5.0]
  def change
	add_column :places, :nombre_max_places, :integer
  end
end
