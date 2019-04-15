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

ActiveRecord::Schema.define(version: 2019_04_15_070505) do

  create_table "parentships", force: :cascade do |t|
    t.integer "person_id"
    t.integer "father_id"
    t.integer "mother_id"
    t.index ["father_id"], name: "index_parentships_on_father_id"
    t.index ["mother_id"], name: "index_parentships_on_mother_id"
    t.index ["person_id"], name: "index_parentships_on_person_id"
  end

  create_table "partnerships", force: :cascade do |t|
    t.integer "person_id"
    t.integer "partner_id"
    t.date "date_started"
    t.date "date_ended"
    t.string "nature"
    t.index ["partner_id"], name: "index_partnerships_on_partner_id"
    t.index ["person_id"], name: "index_partnerships_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.text "bio"
    t.date "date_of_birth"
    t.date "date_of_death"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", limit: 8, null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.text "object_changes", limit: 1073741823
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

end
