class Typesplaces < ActiveRecord::Migration[5.0]
  def change
	create_table :typesplaces do |t|
		t.string :nom
		t.timestamp
	end
  end
end
