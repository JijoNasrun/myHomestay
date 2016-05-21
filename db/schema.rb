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

ActiveRecord::Schema.define(version: 20160521201434) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "state_id",   limit: 4
    t.integer  "postcode",   limit: 4
    t.string   "address",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "addresses", ["state_id"], name: "fk_rails_2d87b6c11e", using: :btree

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "homestay_id", limit: 4
    t.integer  "payment_id",  limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.date     "check_in"
    t.date     "check_out"
  end

  add_index "bookings", ["homestay_id"], name: "fk_rails_8f6e24ffeb", using: :btree
  add_index "bookings", ["payment_id"], name: "fk_rails_cab6812c3c", using: :btree
  add_index "bookings", ["user_id"], name: "fk_rails_ef0571f117", using: :btree

  create_table "homestays", force: :cascade do |t|
    t.integer  "address_id", limit: 4
    t.float    "price",      limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "homestays", ["address_id"], name: "fk_rails_366e796d1a", using: :btree

  create_table "payments", force: :cascade do |t|
    t.float    "payment_amount", limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "state_name", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "address_id",      limit: 4
    t.string   "phone",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
  end

  add_index "users", ["address_id"], name: "fk_rails_eb2fc738e4", using: :btree

  add_foreign_key "addresses", "states"
  add_foreign_key "bookings", "homestays"
  add_foreign_key "bookings", "payments"
  add_foreign_key "bookings", "users"
  add_foreign_key "homestays", "addresses"
  add_foreign_key "users", "addresses"
end
