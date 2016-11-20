class Utilisateurs < ActiveRecord::Migration[5.0]
  def change
	create_table :utilisateurs do |t|
		t.string :nom
		t.string :prenom
		t.timestamp
	end
  end
end
