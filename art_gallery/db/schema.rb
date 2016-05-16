# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160516201703) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "status"
    t.integer  "country_id"
    t.date     "date_of_birth"
    t.text     "background"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "artists", ["country_id"], name: "index_artists_on_country_id", using: :btree

  create_table "artwork_artist_maps", force: :cascade do |t|
    t.integer  "artwork_id"
    t.integer  "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "artwork_artist_maps", ["artist_id"], name: "index_artwork_artist_maps_on_artist_id", using: :btree

  create_table "artwork_image_maps", force: :cascade do |t|
    t.integer  "artwork_id"
    t.integer  "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "artwork_image_maps", ["image_id"], name: "index_artwork_image_maps_on_image_id", using: :btree

  create_table "artwork_seller_maps", force: :cascade do |t|
    t.integer  "artwork_id"
    t.integer  "seller_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "artwork_seller_maps", ["seller_id"], name: "index_artwork_seller_maps_on_seller_id", using: :btree

  create_table "artworks", force: :cascade do |t|
    t.string   "title"
    t.decimal  "price"
    t.date     "date"
    t.string   "description"
    t.string   "period"
    t.integer  "edition"
    t.string   "medium"
    t.string   "size"
    t.boolean  "authentic"
    t.integer  "stock"
    t.string   "subject"
    t.integer  "artwork_artist_map_id"
    t.integer  "artwork_seller_map_id"
    t.integer  "artwork_image_map_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "artworks", ["artwork_artist_map_id"], name: "index_artworks_on_artwork_artist_map_id", using: :btree
  add_index "artworks", ["artwork_image_map_id"], name: "index_artworks_on_artwork_image_map_id", using: :btree
  add_index "artworks", ["artwork_seller_map_id"], name: "index_artworks_on_artwork_seller_map_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "src"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sellers", force: :cascade do |t|
    t.string   "seller_type"
    t.string   "organization_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "address"
    t.string   "email"
    t.integer  "country_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "sellers", ["country_id"], name: "index_sellers_on_country_id", using: :btree

  add_foreign_key "artists", "countries"
  add_foreign_key "artwork_artist_maps", "artists"
  add_foreign_key "artwork_image_maps", "images"
  add_foreign_key "artwork_seller_maps", "sellers"
  add_foreign_key "artworks", "artwork_artist_maps"
  add_foreign_key "artworks", "artwork_image_maps"
  add_foreign_key "artworks", "artwork_seller_maps"
  add_foreign_key "sellers", "countries"
end
