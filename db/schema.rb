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

ActiveRecord::Schema.define(version: 2023_11_20_222542) do

  create_table "occurences", force: :cascade do |t|
    t.string "status"
    t.date "deliveryDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "request_id"
    t.index ["request_id"], name: "index_occurences_on_request_id"
  end

  create_table "requests", force: :cascade do |t|
    t.string "item"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity"
    t.integer "supply_id"
    t.index ["supply_id"], name: "index_requests_on_supply_id"
  end

  create_table "supplies", force: :cascade do |t|
    t.string "name"
    t.text "details"
    t.integer "stock"
    t.string "unity_of_measure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
