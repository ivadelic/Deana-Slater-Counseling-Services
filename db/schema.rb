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

ActiveRecord::Schema.define(version: 20160307040936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "approved",        default: false, null: false
    t.string   "password_digest"
    t.string   "password"
  end

  add_index "admins", ["approved"], name: "index_admins_on_approved", using: :btree

  create_table "articlepoints", force: :cascade do |t|
    t.string   "article_name"
    t.string   "article_link"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "resource_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "main_title"
    t.string   "name"
    t.text     "credits"
    t.string   "email"
    t.string   "phone_number"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "address"
  end

  create_table "faqs", force: :cascade do |t|
    t.string   "main_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string   "business_name"
    t.string   "background_photo"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "propoints", force: :cascade do |t|
    t.text     "point"
    t.integer  "about_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "propoints", ["about_id"], name: "index_propoints_on_about_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.text     "question"
    t.text     "answer"
    t.integer  "faq_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "questions", ["faq_id"], name: "index_questions_on_faq_id", using: :btree

  create_table "resources", force: :cascade do |t|
    t.string   "main_title"
    t.text     "main_paragraph"
    t.string   "telephone_title"
    t.string   "website_title"
    t.string   "article_title"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "telpoints", force: :cascade do |t|
    t.string   "telephone_company"
    t.string   "telephone_number"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "resource_id"
  end

  create_table "webpoints", force: :cascade do |t|
    t.string   "website_company"
    t.string   "website_link"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "resource_id"
  end

  add_foreign_key "propoints", "abouts"
  add_foreign_key "questions", "faqs"
end
