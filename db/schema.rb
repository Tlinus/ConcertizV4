# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161120013700) do

  create_table "artistes", force: :cascade do |t|
    t.string "nom"
  end

  create_table "commentaires", force: :cascade do |t|
    t.string  "texte"
    t.string  "titre"
    t.integer "concert_id"
    t.integer "compte_id"
    t.index ["compte_id"], name: "index_commentaires_on_compte_id"
    t.index ["concert_id"], name: "index_commentaires_on_concert_id"
  end

  create_table "concerts", force: :cascade do |t|
    t.string  "name"
    t.integer "genre_id"
    t.index ["genre_id"], name: "index_concerts_on_genre_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "nom"
  end

  create_table "places", force: :cascade do |t|
    t.integer "places"
    t.integer "prix"
    t.integer "concert_id"
    t.integer "typesplace_id"
    t.index ["concert_id"], name: "index_places_on_concert_id"
    t.index ["typesplace_id"], name: "index_places_on_typesplace_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "compte_id"
    t.integer "place_id"
    t.index ["compte_id"], name: "index_reservations_on_compte_id"
    t.index ["place_id"], name: "index_reservations_on_place_id"
  end

  create_table "seances", force: :cascade do |t|
    t.date    "date"
    t.integer "concert_id"
    t.integer "artiste_id"
    t.index ["artiste_id"], name: "index_seances_on_artiste_id"
    t.index ["concert_id"], name: "index_seances_on_concert_id"
  end

  create_table "typesplaces", force: :cascade do |t|
    t.string "nom"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
