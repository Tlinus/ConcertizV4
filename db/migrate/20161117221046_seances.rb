class Seances < ActiveRecord::Migration[5.0]
  def change
	create_table :seances do |t|
		t.date :date
		t.integer :concert_id
		t.integer :artiste_id
	end
	
	add_index :seances, :concert_id
	add_index :seances, :artiste_id
  end
end
