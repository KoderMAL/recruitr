# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_26_140701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "available_positions", force: :cascade do |t|
    t.string "content"
    t.integer "applications_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "participant_id"
    t.index ["participant_id"], name: "index_available_positions_on_participant_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "starts_on"
    t.datetime "ends_on"
    t.bigint "participant_id", null: false
    t.bigint "recruiter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["participant_id"], name: "index_meetings_on_participant_id"
    t.index ["recruiter_id"], name: "index_meetings_on_recruiter_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "social_media"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recruiters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "position"
    t.integer "seniority_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "participant_id"
    t.index ["participant_id"], name: "index_recruiters_on_participant_id"
  end

  create_table "score_cards", force: :cascade do |t|
    t.integer "dynamism"
    t.integer "interest"
    t.integer "experience"
    t.integer "overall"
    t.bigint "participant_id", null: false
    t.bigint "recruiter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["participant_id"], name: "index_score_cards_on_participant_id"
    t.index ["recruiter_id"], name: "index_score_cards_on_recruiter_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "content"
    t.bigint "available_position_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["available_position_id"], name: "index_skills_on_available_position_id"
  end

  add_foreign_key "available_positions", "participants"
  add_foreign_key "meetings", "participants"
  add_foreign_key "meetings", "recruiters"
  add_foreign_key "recruiters", "participants"
  add_foreign_key "score_cards", "participants"
  add_foreign_key "score_cards", "recruiters"
  add_foreign_key "skills", "available_positions"
end
