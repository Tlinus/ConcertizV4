class UpdateUser < ActiveRecord::Migration[5.0]
  def change
    add_column :utilisateurs, :username, :string
    add_column :utilisateurs, :password, :string
    add_column :utilisateurs, :email,    :string
  end
end
