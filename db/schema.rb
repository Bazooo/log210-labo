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

ActiveRecord::Schema.define(version: 20171124051737) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_logs", force: :cascade do |t|
    t.string "username"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.string "civic_number"
    t.string "street"
    t.string "city"
    t.string "province"
    t.string "postcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "reforganism_id"
    t.index ["reforganism_id"], name: "index_addresses_on_reforganism_id"
  end

  create_table "diplomas", force: :cascade do |t|
    t.string "program_name"
    t.string "institution_name"
    t.string "address"
    t.datetime "date_start"
    t.datetime "date_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_profile_id"
    t.index ["user_profile_id"], name: "index_diplomas_on_user_profile_id"
  end

  create_table "organisms", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "fax"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_organisms_on_user_id"
  end

  create_table "referent_searches", force: :cascade do |t|
    t.string "familyname"
    t.string "surname"
    t.string "nameRefOrganism"
    t.string "title"
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "referents", force: :cascade do |t|
    t.string "familyName"
    t.string "surname"
    t.string "title"
    t.string "telephone"
    t.string "cellphone"
    t.string "fax"
    t.string "email"
    t.integer "preference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reforganism_referents", id: false, force: :cascade do |t|
    t.bigint "reforganism_id", null: false
    t.bigint "referent_id", null: false
    t.bigint "referents_id"
    t.bigint "reforganisms_id"
    t.index ["referents_id"], name: "index_reforganism_referents_on_referents_id"
    t.index ["reforganisms_id"], name: "index_reforganism_referents_on_reforganisms_id"
  end

  create_table "reforganisms", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: true
  end

  create_table "servicepoints", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "fax"
    t.bigint "organism_id"
    t.index ["organism_id"], name: "index_servicepoints_on_organism_id"
  end

  create_table "telephones", force: :cascade do |t|
    t.string "work"
    t.string "fax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "reforganism_id"
    t.index ["reforganism_id"], name: "index_telephones_on_reforganism_id"
  end

  create_table "user_phones", force: :cascade do |t|
    t.string "cell_number"
    t.string "home_number"
    t.string "work_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_profile_id"
    t.index ["user_profile_id"], name: "index_user_phones_on_user_profile_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "organism_role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
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

  add_foreign_key "diplomas", "user_profiles"
  add_foreign_key "reforganism_referents", "referents", column: "referents_id"
  add_foreign_key "reforganism_referents", "reforganisms", column: "reforganisms_id"
  add_foreign_key "user_phones", "user_profiles"
  add_foreign_key "user_profiles", "users"
end
