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

ActiveRecord::Schema.define(version: 20170516134511) do

  create_table "accumulators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float    "acc_val_change",    limit: 24
    t.float    "acc_val_available", limit: 24
    t.integer  "bonus_account_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["bonus_account_id"], name: "index_accumulators_on_bonus_account_id", using: :btree
  end

  create_table "bonus_accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float    "da_val_availbale", limit: 24
    t.float    "da_val_change",    limit: 24
    t.float    "da_val_before",    limit: 24
    t.integer  "item_feature_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["item_feature_id"], name: "index_bonus_accounts_on_item_feature_id", using: :btree
  end

  create_table "call_records", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "call_destination"
    t.integer  "duration"
    t.date     "call_date"
    t.time     "call_time"
    t.string   "call_charge"
    t.integer  "user_account_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["user_account_id"], name: "index_call_records_on_user_account_id", using: :btree
  end

  create_table "communities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fn_fs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "no_of_fnf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_features", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "pulse"
    t.float    "tariff_on_net",          limit: 24
    t.float    "tariff_off_net",         limit: 24
    t.float    "tariff_on_net_on_atw",   limit: 24
    t.float    "tariff_off_net_on_atw",  limit: 24
    t.string   "applicable_time_window"
    t.string   "call_destination"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "offers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "priorities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "phoneNo"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_fnf_lists", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "phone_no"
    t.string   "fnf_phone_no"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "accumulators", "bonus_accounts"
  add_foreign_key "bonus_accounts", "item_features"
  add_foreign_key "call_records", "user_accounts"
end
