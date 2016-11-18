class Places < ActiveRecord::Migration[5.0]
  def change
	create_table :places do |t|
		t.integer :places 
		t.integer :prix
		t.integer :concert_id
		t.integer :typesplace_id
		t.timestamp
	end
	
	add_index :places, :concert_id
	add_index :places, :typesplace_id
  end
end
