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

ActiveRecord::Schema.define(version: 2018_05_30_084050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chickens_gangs", force: :cascade do |t|
    t.string "breed", null: false
    t.string "gang_name", null: false
    t.integer "capacity", null: false
    t.string "photo"
    t.integer "year_of_birth"
    t.integer "price", null: false
    t.boolean "availability", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "owner_id"
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.index ["owner_id"], name: "index_chickens_gangs_on_owner_id"
  end

  create_table "rentings", force: :cascade do |t|
    t.bigint "chickens_gang_id"
    t.bigint "user_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chickens_gang_id"], name: "index_rentings_on_chickens_gang_id"
    t.index ["user_id"], name: "index_rentings_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.string "content"
    t.integer "rating", null: false
    t.bigint "chickens_gang_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chickens_gang_id"], name: "index_reviews_on_chickens_gang_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "address", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.float "latitude"
    t.float "longitude"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "rentings", "chickens_gangs"
  add_foreign_key "rentings", "users"
  add_foreign_key "reviews", "chickens_gangs"
  add_foreign_key "reviews", "users"
end
