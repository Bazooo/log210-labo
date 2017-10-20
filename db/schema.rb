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

ActiveRecord::Schema.define(version: 20171017034522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_logs", force: :cascade do |t|
    t.string "username"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adresses", force: :cascade do |t|
    t.string "no_civique"
    t.string "rue"
    t.string "ville"
    t.string "province"
    t.string "code_postal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "organisme_id"
    t.index ["organisme_id"], name: "index_adresses_on_organisme_id"
  end

  create_table "organismes", force: :cascade do |t|
    t.string "nom"
    t.string "couriel"
    t.string "site_web"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "telephones", force: :cascade do |t|
    t.string "bureau"
    t.string "telecopie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "organisme_id"
    t.index ["organisme_id"], name: "index_telephones_on_organisme_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
