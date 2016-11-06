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

ActiveRecord::Schema.define(version: 20161106021839) do

  create_table "attendees", force: :cascade do |t|
    t.string   "name"
    t.integer  "entry_fee"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_attendees_on_team_id"
  end

  create_table "contributions", force: :cascade do |t|
    t.float    "amount"
    t.text     "comment"
    t.boolean  "paid"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_contributions_on_event_id"
  end

  create_table "coupons", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.date     "expiration"
    t.date     "start"
    t.float    "discount"
    t.boolean  "active",     default: true
    t.integer  "event_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["event_id"], name: "index_coupons_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.text     "desc"
    t.date     "event_date"
    t.time     "event_time"
    t.string   "venue_name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.date     "registration_start"
    t.float    "fee_adult"
    t.float    "fee_child"
    t.float    "fee_other"
    t.float    "goal"
    t.float    "raised"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "organization_id"
    t.index ["organization_id"], name: "index_events_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "tagline"
    t.text     "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "member_limit"
    t.integer  "event_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["event_id"], name: "index_teams_on_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin",           default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
