class Reservations < ActiveRecord::Migration[5.0]
  def change
	create_table :reservations do |t|
		t.integer :compte_id
		t.integer :place_id
	end
	
	add_index :reservations, :compte_id
	add_index :reservations, :place_id
  end
end
