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

ActiveRecord::Schema.define(version: 20151015155050) do

  create_table "events", force: :cascade do |t|
    t.string "name_of_location"
    t.string "type_of_event"
    t.date   "date"
    t.time   "time"
    t.string "address"
    t.string "phone"
  end

  create_table "upcoming_videos", force: :cascade do |t|
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "videos", force: :cascade do |t|
    t.string  "title"
    t.string  "featured_image"
    t.text    "description"
    t.string  "video_url"
    t.string  "teaser_video_url"
    t.date    "post_date"
    t.string  "slug"
    t.string  "thumbnail_1"
    t.string  "thumbnail_2"
    t.string  "thumbnail_3"
    t.string  "thumbnail_4"
    t.boolean "save_as_draft"
  end

end
