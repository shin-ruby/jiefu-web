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

ActiveRecord::Schema.define(version: 20170601040610) do

  create_table "about_translations", force: :cascade do |t|
    t.integer  "about_id",   null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "summary"
    t.text     "introduce"
    t.text     "course"
    t.text     "ceo"
    t.index ["about_id"], name: "index_about_translations_on_about_id"
    t.index ["locale"], name: "index_about_translations_on_locale"
  end

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

  create_table "home_translations", force: :cascade do |t|
    t.integer  "home_id",    null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "copywrite1"
    t.string   "copywrite2"
    t.text     "advantage"
    t.index ["home_id"], name: "index_home_translations_on_home_id"
    t.index ["locale"], name: "index_home_translations_on_locale"
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

  create_table "info_translations", force: :cascade do |t|
    t.integer  "info_id",    null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "content"
    t.index ["info_id"], name: "index_info_translations_on_info_id"
    t.index ["locale"], name: "index_info_translations_on_locale"
  end

  create_table "infos", force: :cascade do |t|
    t.integer  "category"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
  end

  create_table "laboratories", force: :cascade do |t|
    t.text     "laboratory_title_content"
    t.string   "rd_title"
    t.text     "rd_content"
    t.string   "hsf_title"
    t.text     "hsf_content"
    t.text     "hsf_list"
    t.string   "multimedia_title"
    t.text     "multimedia_content"
    t.text     "multimedia_list"
    t.string   "power_title"
    t.text     "power_content"
    t.text     "power_list"
    t.string   "mechanical_title"
    t.text     "mechanical_content"
    t.text     "mechanical_list"
    t.string   "chemistry_title"
    t.text     "chemistry_content"
    t.text     "chemistry_list"
    t.string   "audio_title"
    t.text     "audio_content"
    t.text     "audio_list"
    t.string   "anechoic_title"
    t.text     "anechoic_content"
    t.text     "anechoic_list"
    t.string   "subjectivity_title"
    t.text     "subjectivity_content"
    t.text     "subjectivity_list"
    t.string   "salt_title"
    t.text     "salt_content"
    t.text     "salt_list"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
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

  create_table "product_translations", force: :cascade do |t|
    t.integer  "product_id", null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "feature"
    t.index ["locale"], name: "index_product_translations_on_locale"
    t.index ["product_id"], name: "index_product_translations_on_product_id"
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
