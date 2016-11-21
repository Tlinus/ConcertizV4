class Userid < ActiveRecord::Migration[5.0]
  def change
	add_column :reservations, :user_id, :integer
	add_index :reservations, :user_id
  end
end
