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

ActiveRecord::Schema.define(version: 20160515222308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.string   "repo_url"
    t.datetime "due_date"
    t.integer  "user_id"
    t.boolean  "reviewed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["due_date"], name: "index_assignments_on_due_date", using: :btree
    t.index ["reviewed"], name: "index_assignments_on_reviewed", using: :btree
    t.index ["user_id"], name: "index_assignments_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_users_on_username", using: :btree
  end

end
