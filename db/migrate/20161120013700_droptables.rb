class Droptables < ActiveRecord::Migration[5.0]
  def change
	drop_table :utilisateurs
	drop_table :comptes
	
  
  
  end
end
