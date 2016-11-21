class Users < ActiveRecord::Migration[5.0]
  def change
    add_column :commentaires, :user_id, :integer
    add_index :commentaires, :user_id
  end
end
