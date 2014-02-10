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

ActiveRecord::Schema.define(version: 20140212010534) do

  create_table "ailments", force: true do |t|
    t.string   "ailment_name"
    t.datetime "begin_date"
    t.datetime "end_date"
    t.string   "ailment_description"
    t.integer  "phr_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ailments", ["phr_id"], name: "index_ailments_on_phr_id"

  create_table "immunizations", force: true do |t|
    t.string   "immunization"
    t.date     "date"
    t.date     "expiry"
    t.integer  "phr_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "immunizations", ["phr_id"], name: "index_immunizations_on_phr_id"

  create_table "medications", force: true do |t|
    t.string   "medication"
    t.string   "drug"
    t.datetime "begin_date"
    t.integer  "duration"
    t.float    "dosage"
    t.integer  "frequency"
    t.string   "ailment"
    t.string   "prescribing_doctor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phrs", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "date_of_birth"
    t.string   "gender"
    t.string   "blood_type"
    t.string   "health_card_no"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "phrs", ["user_id"], name: "index_phrs_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
