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

ActiveRecord::Schema.define(version: 20170313013811) do

  create_table "infos", force: :cascade do |t|
    t.integer  "category"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "category"
    t.string   "name"
    t.decimal  "size_length", precision: 4, scale: 1
    t.decimal  "size_width",  precision: 4, scale: 1
    t.decimal  "size_height", precision: 4, scale: 1
    t.string   "impedance"
    t.integer  "fo"
    t.integer  "rated_power"
    t.integer  "sensitivity"
    t.string   "frequency"
    t.text     "feature"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["name"], name: "index_products_on_name", unique: true
  end

end
