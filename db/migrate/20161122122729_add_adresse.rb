class AddAdresse < ActiveRecord::Migration[5.0]
  def change
     create_table "salles", force: :cascade do |t|
        t.string  "nom"
        t.string  "adresse"
        t.string  "coord"
     end
  end
end
