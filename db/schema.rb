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

ActiveRecord::Schema.define(version: 20150901205801) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "habits", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "comepletion_steps"
    t.boolean  "form"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "article"
  end

  create_table "milestones", force: :cascade do |t|
    t.integer  "habit_id"
    t.integer  "user_id"
    t.datetime "milestone"
    t.datetime "date_created"
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.integer "age"
    t.string  "location"
    t.string  "email"
    t.integer "phone"
    t.boolean "contact"
  end

end