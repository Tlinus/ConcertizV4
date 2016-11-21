class LienPlacesSeances < ActiveRecord::Migration[5.0]
  def change
	add_column :places, :seance_id, :integer
	add_index :places, :seance_id
  end
end
