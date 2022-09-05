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

ActiveRecord::Schema[7.0].define(version: 2022_09_05_100749) do
  create_table "trips", force: :cascade do |t|
    t.integer "trip_number"
    t.integer "distance"
    t.string "fuel_consumption"
    t.integer "vehicle_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "trip_name"
    t.index ["vehicle_id"], name: "index_trips_on_vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer "vehicle_number"
    t.string "vehicle_type"
    t.string "vehicle_model"
    t.string "vehicle_color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "trips", "vehicles"
end
