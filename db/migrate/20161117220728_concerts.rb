class Concerts < ActiveRecord::Migration[5.0]
  def change
	create_table :concerts do |t|
		t.string :name
		t.integer :genre_id
	end
	
	add_index :concerts, :genre_id
  end
end
