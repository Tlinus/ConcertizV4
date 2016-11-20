class Commentaires < ActiveRecord::Migration[5.0]
  def change
	create_table :commentaires do |t| 
		t.string :texte
		t.string :titre
		t.integer :concert_id
		t.integer :compte_id
		t.timestamp
	end
	
	add_index :commentaires, :concert_id
	add_index :commentaires, :compte_id
  end
end
