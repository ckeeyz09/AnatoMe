# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150818235405) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.integer  "workout_id"
    t.integer  "user_id"
    t.integer  "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "day"
    t.string   "description"
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "musclegroups_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "musclegroups", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "slug"
  end

  add_index "musclegroups", ["slug"], name: "index_musclegroups_on_slug", unique: true, using: :btree

  create_table "supplements", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "musclegroups_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "slug"
  end

  add_index "supplements", ["slug"], name: "index_supplements_on_slug", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "password_digest"
    t.string   "location"
    t.string   "goal"
    t.integer  "weight"
    t.integer  "height"
    t.integer  "bfp"
    t.integer  "bmi"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "email"
    t.string   "slug"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["slug"], name: "index_users_on_slug", unique: true, using: :btree

  create_table "workouts", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "video_url"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "slug"
    t.integer  "musclegroup_id"
  end

  add_index "workouts", ["slug"], name: "index_workouts_on_slug", unique: true, using: :btree

end
