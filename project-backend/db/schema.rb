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

ActiveRecord::Schema.define(version: 2019_05_13_183145) do

  create_table "babies", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.integer "mother_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mother_id"], name: "index_babies_on_mother_id"
  end

  create_table "common_probs", force: :cascade do |t|
    t.string "problem"
    t.string "fix"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "where"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "milkings", force: :cascade do |t|
    t.string "date"
    t.string "time"
    t.string "ounces"
    t.integer "mother_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mother_id"], name: "index_milkings_on_mother_id"
  end

  create_table "mothers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "image"
    t.string "baby_name"
    t.string "baby_image"
    t.string "baby_age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
