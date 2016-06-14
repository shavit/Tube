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

ActiveRecord::Schema.define(version: 20160318101836) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "ratings", force: :cascade do |t|
    t.string   "object_name"
    t.integer  "object_id"
    t.integer  "user_id"
    t.integer  "rank"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

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

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

  create_table "videos", force: :cascade do |t|
    t.integer "rank",                    default: 0,                            null: false
    t.integer "upvotes",                 default: 0,                            null: false
    t.integer "downvotes",               default: 0,                            null: false
    t.string  "source_name", limit: 20,                                         null: false
    t.integer "duration",                default: 0,                            null: false
    t.integer "views",                   default: 0,                            null: false
    t.string  "username",    limit: 255,                                        null: false
    t.string  "pornstars",   limit: 255,                                        null: false
    t.string  "categories",  limit: 255,                                        null: false
    t.text    "tags",                                                           null: false
    t.string  "title",       limit: 255,                                        null: false
    t.string  "description", limit: 255,                                        null: false
    t.string  "picture",     limit: 255,                                        null: false
    t.text    "pictures",                                                       null: false
    t.text    "embed_code",                                                     null: false
    t.date    "created_at",              default: -> { "('now'::text)::date" }, null: false
    t.date    "updated_at",              default: -> { "('now'::text)::date" }, null: false
  end

  add_index "videos", ["categories"], name: "videos_categories_index", where: "(categories IS NOT NULL)", using: :btree
  add_index "videos", ["downvotes"], name: "videos_downvotes_index", where: "(downvotes > 20)", using: :btree
  add_index "videos", ["duration"], name: "videos_duration_index", where: "(duration > 360)", using: :btree
  add_index "videos", ["rank"], name: "videos_rank_index", where: "(rank > 10)", using: :btree
  add_index "videos", ["tags"], name: "videos_tags_index", where: "(tags IS NOT NULL)", using: :btree
  add_index "videos", ["upvotes"], name: "videos_upvotes_index", where: "(upvotes > 20)", using: :btree
  add_index "videos", ["views"], name: "videos_views_index", where: "(views > 10)", using: :btree

end
