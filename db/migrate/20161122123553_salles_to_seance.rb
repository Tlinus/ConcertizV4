class SallesToSeance < ActiveRecord::Migration[5.0]
  def change
    add_column :seances, :salle_id, :integer
    add_index :seances, :salle_id
  end
end
