class Comptes < ActiveRecord::Migration[5.0]
  def change
	create_table :comptes do |t|
		t.string :username
		t.string :password
		t.string :adresse_mail
		t.integer :utilisateur_id
		t.timestamp
	end
	
	add_index :comptes, :utilisateur_id
  end
end
