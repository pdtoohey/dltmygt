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

ActiveRecord::Schema.define(version: 20141216231817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendees", force: true do |t|
    t.string   "name"
    t.string   "home_town"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attendees_tournaments", force: true do |t|
    t.integer "attendee_id"
    t.integer "tournament_id"
  end

  create_table "golves", force: true do |t|
    t.integer  "attendee_id"
    t.integer  "tournament_id"
    t.integer  "stroke_score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "stroke_number"
  end

  create_table "tournaments", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "host"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yellowtails", force: true do |t|
    t.integer  "attendee_id"
    t.integer  "tournament_id"
    t.integer  "yellowtail_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fishing_day"
  end

end
