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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130515084653) do

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.float    "lat"
    t.float    "long"
    t.string   "location_type"
    t.string   "country"
    t.string   "city"
    t.integer  "gmt_offset"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "moon_phases", :force => true do |t|
    t.float    "illumination"
    t.datetime "phase_time_gmt"
    t.integer  "location_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "moon_phases", ["location_id"], :name => "index_moon_phases_on_location_id"

  create_table "sightings", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "sighted"
    t.string   "visibility"
    t.string   "comments"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "sightings", ["user_id"], :name => "index_sightings_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "email"
    t.string   "password"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
