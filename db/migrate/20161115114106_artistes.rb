class Artistes < ActiveRecord::Migration[5.0]
  def change
	create_table :artistes do |t|
		t.string :nom
		t.timestamp
	end
  end
end
