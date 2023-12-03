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

ActiveRecord::Schema[7.1].define(version: 2023_12_03_133850) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "subs_levels", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string "code_word"
    t.integer "owner_id"
    t.string "name"
    t.string "access_type_id"
    t.integer "rating"
    t.string "description"
    t.integer "options_id"
    t.integer "genre_id"
    t.boolean "approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest"
    t.integer "rating"
    t.integer "level"
    t.bigint "subs_levels_id"
    t.string "photo_link"
    t.integer "tests_passed_today"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subs_levels_id"], name: "index_users_on_subs_levels_id"
  end

end
