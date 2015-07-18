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

ActiveRecord::Schema.define(version: 20150717184801) do

  create_table "abouts", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "main_title"
    t.text     "main_paragraph"
    t.string   "approach_title"
    t.text     "approach_paragraph"
    t.string   "education_title"
    t.text     "education_paragraph"
    t.string   "professional_membership_title"
    t.text     "professional_membership_point1"
    t.text     "professional_membership_point2"
    t.text     "professional_membership_point3"
  end

  create_table "admins", force: :cascade do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string   "business_name"
    t.string   "background_photo"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "propoints", force: :cascade do |t|
    t.text     "points"
    t.integer  "about_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "propoints", ["about_id"], name: "index_propoints_on_about_id"

end
