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

ActiveRecord::Schema.define(version: 20140906155354) do

  create_table "feeds", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.text     "smry"
    t.datetime "publish_at"
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feeds", ["site_id"], name: "index_feeds_on_site_id"
  add_index "feeds", ["url"], name: "index_feeds_on_url", unique: true

  create_table "mains", force: true do |t|
    t.integer  "user_id"
    t.integer  "feed_id"
    t.boolean  "read_flg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mains", ["user_id"], name: "index_mains_on_user_id"

  create_table "sbscs", force: true do |t|
    t.integer  "user_id"
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sbscs", ["user_id", "site_id"], name: "index_sbscs_on_user_id_and_site_id", unique: true

  create_table "sites", force: true do |t|
    t.string   "title"
    t.string   "st_url"
    t.string   "rs_url"
    t.datetime "last_publish_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sites", ["rs_url"], name: "index_sites_on_rs_url", unique: true

end
