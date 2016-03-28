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

ActiveRecord::Schema.define(version: 20160328070702) do

  create_table "photos", force: :cascade do |t|
    t.integer  "author_id"
    t.string   "title"
    t.string   "description"
    t.string   "picture"
    t.string   "url"
    t.string   "tags"
    t.integer  "votes_up"
    t.integer  "votes_down"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "picture"
    t.string   "description"
    t.string   "gender"
    t.datetime "birth_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "ratings", force: :cascade do |t|
    t.string   "object_name"
    t.integer  "object_id"
    t.integer  "user_id"
    t.integer  "rank"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "profile_id"
    t.string   "room_type"
    t.string   "name"
    t.string   "description"
    t.string   "picture"
    t.integer  "participants_number"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "rooms", ["participants_number"], name: "index_rooms_on_participants_number"
  add_index "rooms", ["profile_id"], name: "index_rooms_on_profile_id"
  add_index "rooms", ["room_type"], name: "index_rooms_on_room_type"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true

end
