# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_09_062244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airports", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "passenger_id"
    t.integer "flight_id"
    t.string "status"
    t.string "name"
    t.string "email"
  end

  create_table "flights", force: :cascade do |t|
    t.bigint "destination_airport_id"
    t.string "departure_time"
    t.string "arrival_time"
    t.string "departure_area"
    t.bigint "departure_airport_id"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "email"
    t.bigint "booking_id"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_passengers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "bio"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "flights"
  add_foreign_key "bookings", "passengers"
  add_foreign_key "flights", "airports", column: "departure_airport_id"
  add_foreign_key "flights", "airports", column: "destination_airport_id"
end
