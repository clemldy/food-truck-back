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

ActiveRecord::Schema.define(version: 2019_06_05_170057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_truck_items", force: :cascade do |t|
    t.bigint "food_truck_id"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_truck_id"], name: "index_food_truck_items_on_food_truck_id"
    t.index ["item_id"], name: "index_food_truck_items_on_item_id"
  end

  create_table "food_trucks", force: :cascade do |t|
    t.integer "location_id"
    t.string "name"
    t.string "facility_type"
    t.string "status"
    t.string "food_items"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "food_truck_items", "food_trucks"
  add_foreign_key "food_truck_items", "items"
end
