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

ActiveRecord::Schema.define(version: 20160331213818) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "comment"
    t.string   "user_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "post_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name_of_location"
    t.string   "type_of_event"
    t.date     "date"
    t.time     "time"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "timezone"
  end

  create_table "live_shows", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.date     "date"
    t.time     "time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "timezone"
  end

  create_table "live_stream_recordings", force: :cascade do |t|
    t.string "title"
    t.string "video"
    t.string "description"
    t.string "image"
    t.date   "date"
  end

  create_table "models", force: :cascade do |t|
    t.string   "name"
    t.string   "featured_image_url"
    t.string   "portfolio_image"
    t.string   "nickname"
    t.date     "birthdate"
    t.string   "astrology"
    t.string   "birth_place"
    t.string   "ethnicity"
    t.string   "nationality"
    t.string   "hair_color"
    t.string   "measurements"
    t.string   "height"
    t.string   "tattoos"
    t.string   "pierciings"
    t.text     "description"
    t.string   "favorite_position"
    t.boolean  "save_as_draft"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "website"
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "image_url"
    t.integer  "video_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "featured_image"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.date     "date"
    t.string   "teaser"
    t.string   "video"
  end

  create_table "products", force: :cascade do |t|
    t.string  "title"
    t.text    "description"
    t.string  "image"
    t.integer "price"
    t.string  "slug"
  end

  create_table "shots", force: :cascade do |t|
    t.integer "video_id"
    t.integer "model_id"
    t.integer "picture_id"
    t.string  "slug"
  end

  create_table "upcoming_videos", force: :cascade do |t|
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_admin",               default: false
    t.boolean  "is_suspended"
    t.boolean  "is_paid",                default: false
    t.string   "member_id"
    t.string   "answer"
    t.string   "amount"
    t.string   "credits"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.string   "featured_image"
    t.text     "description"
    t.string   "video_url"
    t.string   "teaser_video_url"
    t.date     "post_date"
    t.string   "thumbnail_1"
    t.string   "thumbnail_2"
    t.string   "thumbnail_3"
    t.string   "thumbnail_4"
    t.boolean  "save_as_draft"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

end
