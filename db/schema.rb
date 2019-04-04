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

ActiveRecord::Schema.define(version: 2019_04_04_082317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "children", force: :cascade do |t|
    t.bigint "marriage_id"
    t.string "first_name"
    t.date "birthday"
    t.string "photo"
    t.string "relation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["marriage_id"], name: "index_children_on_marriage_id"
  end

  create_table "females", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthday"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gifts", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.bigint "child_id"
    t.integer "birthday"
    t.boolean "purchased", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_id"], name: "index_gifts_on_child_id"
  end

  create_table "males", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthday"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marriages", force: :cascade do |t|
    t.bigint "male_id"
    t.bigint "female_id"
    t.string "anniversary"
    t.string "photo"
    t.string "timezone", default: "Central Time (US & Canada)"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["female_id"], name: "index_marriages_on_female_id"
    t.index ["male_id"], name: "index_marriages_on_male_id"
  end

  create_table "reminders", force: :cascade do |t|
    t.string "type"
    t.string "user_type"
    t.bigint "user_id"
    t.integer "timing_number"
    t.string "timing_unit"
    t.string "mode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_type", "user_id"], name: "index_reminders_on_user_type_and_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "children", "marriages"
  add_foreign_key "gifts", "children"
  add_foreign_key "marriages", "females"
  add_foreign_key "marriages", "males"
end
