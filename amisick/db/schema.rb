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

ActiveRecord::Schema.define(version: 2018_06_27_031034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "domain_infos", force: :cascade do |t|
    t.integer "enabled"
    t.string "smtp_domain"
    t.integer "ref_id"
    t.string "img_rd"
    t.integer "weight"
    t.cidr "sending_ip"
    t.bigint "sender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sender_id"], name: "index_domain_infos_on_sender_id"
  end

  create_table "m_webhooks", force: :cascade do |t|
    t.string "event"
    t.string "email"
    t.bigint "hook_id"
    t.bigint "camp_id"
    t.string "campaign_name"
    t.date "date_sent"
    t.date "date_event"
    t.bigint "ts_event"
    t.bigint "ts_sent"
    t.string "tag"
    t.string "url"
    t.cidr "sending_ip"
    t.string "esp"
    t.string "user"
    t.string "reason"
    t.string "ts"
    t.bigint "origin_id"
    t.bigint "list_id"
    t.bigint "sender_id"
    t.bigint "domain_info_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["domain_info_id"], name: "index_m_webhooks_on_domain_info_id"
    t.index ["sender_id"], name: "index_m_webhooks_on_sender_id"
  end

  create_table "senders", force: :cascade do |t|
    t.string "from_name"
    t.string "sign_domain"
    t.string "from_email"
    t.integer "sib_id"
    t.integer "active"
    t.text "domains_data", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "t_webhooks", force: :cascade do |t|
    t.string "user"
    t.string "event"
    t.string "email"
    t.bigint "hook_id"
    t.date "date"
    t.string "ts"
    t.bigint "message_id"
    t.bigint "ts_event"
    t.string "subject"
    t.string "tag"
    t.bigint "ts_epoch"
    t.bigint "teplate_id"
    t.cidr "sendin_ip"
    t.string "url"
    t.string "esp"
    t.string "link"
    t.string "desc"
    t.string "reason"
    t.bigint "sender_id"
    t.bigint "domain_info_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["domain_info_id"], name: "index_t_webhooks_on_domain_info_id"
    t.index ["sender_id"], name: "index_t_webhooks_on_sender_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
