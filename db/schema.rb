# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_07_145331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amounts", force: :cascade do |t|
    t.text "content"
    t.bigint "workout_id", null: false
    t.bigint "exercise_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "sets"
    t.integer "reps"
    t.index ["exercise_id"], name: "index_amounts_on_exercise_id"
    t.index ["workout_id"], name: "index_amounts_on_workout_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "body_part"
    t.string "description"
    t.string "equipment"
    t.string "video_url"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.string "creator"
    t.string "difficulty_level"
    t.integer "exercises"
    t.string "details"
    t.string "equipment"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "amounts", "exercises"
  add_foreign_key "amounts", "workouts"
end
