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

ActiveRecord::Schema.define(version: 2021_08_07_034202) do

  create_table "amazon_accounts", force: :cascade do |t|
    t.string "public_name"
    t.binary "profile_photo"
    t.string "email"
    t.text "about"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_amazon_accounts_on_person_id"
  end

  create_table "amazon_payments", force: :cascade do |t|
    t.float "cashback"
    t.string "upi"
    t.float "balance"
    t.integer "amazon_account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["amazon_account_id"], name: "index_amazon_payments_on_amazon_account_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
