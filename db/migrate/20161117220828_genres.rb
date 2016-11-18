class Genres < ActiveRecord::Migration[5.0]
  def change
	create_table :genres do |t|
		t.string :nom
		t.timestamp
	end
  end
end
