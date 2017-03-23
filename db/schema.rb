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

ActiveRecord::Schema.define(version: 20170323022641) do

  create_table "abouts", force: :cascade do |t|
    t.text     "summary"
    t.text     "introduce"
    t.text     "course"
    t.text     "ceo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "careers", force: :cascade do |t|
    t.string   "position"
    t.string   "place"
    t.integer  "people"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string   "copywrite1"
    t.string   "copywrite2"
    t.string   "newproduct1"
    t.string   "newproduct2"
    t.string   "newproduct3"
    t.string   "newproduct4"
    t.string   "newproduct5"
    t.string   "newproduct6"
    t.string   "mainproduct1"
    t.string   "mainproduct2"
    t.string   "mainproduct3"
    t.string   "mainproduct4"
    t.text     "advantage"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "infos", force: :cascade do |t|
    t.integer  "category"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
  end

  create_table "messages", force: :cascade do |t|
    t.string   "name"
    t.string   "mobile"
    t.string   "email"
    t.string   "company"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "info_id"
    t.index ["info_id"], name: "index_pictures_on_info_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer  "category"
    t.string   "name"
    t.decimal  "size_length",    precision: 4, scale: 1
    t.decimal  "size_width",     precision: 4, scale: 1
    t.decimal  "size_height",    precision: 4, scale: 1
    t.string   "impedance"
    t.integer  "fo"
    t.decimal  "rated_power",    precision: 3, scale: 1
    t.decimal  "sensitivity",    precision: 3, scale: 1
    t.string   "frequency"
    t.text     "feature"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "photo1"
    t.string   "photo2"
    t.string   "configuration1"
    t.string   "configuration2"
    t.string   "curve1"
    t.string   "curve2"
    t.integer  "product_type"
    t.index ["name"], name: "index_products_on_name", unique: true
    t.index ["product_type"], name: "index_products_on_product_type"
  end

  create_table "searches", force: :cascade do |t|
    t.string   "name"
    t.integer  "category"
    t.integer  "product_type"
    t.integer  "min_fo"
    t.integer  "max_fo"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.decimal  "min_rated_power", precision: 3, scale: 1
    t.decimal  "max_rated_power", precision: 3, scale: 1
    t.decimal  "min_sensitivity", precision: 3, scale: 1
    t.decimal  "max_sensitivity", precision: 3, scale: 1
    t.decimal  "min_size_length", precision: 4, scale: 1
    t.decimal  "max_size_length", precision: 4, scale: 1
    t.decimal  "min_size_width",  precision: 4, scale: 1
    t.decimal  "max_size_width",  precision: 4, scale: 1
    t.decimal  "min_size_height", precision: 4, scale: 1
    t.decimal  "max_size_height", precision: 4, scale: 1
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
