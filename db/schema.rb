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

ActiveRecord::Schema.define(version: 20140209203419) do

  create_table "favourites", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_favourites", force: true do |t|
    t.integer  "location_id"
    t.integer  "favorite_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_favourites", ["favorite_id"], name: "index_line_favourites_on_favorite_id"
  add_index "line_favourites", ["location_id"], name: "index_line_favourites_on_location_id"

  create_table "locations", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.string   "street"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

end
