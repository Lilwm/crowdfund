# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_05_175753) do
  create_table "donations", force: :cascade do |t|
    t.string "name"
    t.integer "campaign_ID"
    t.integer "amount"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "request_donation_id", null: false
    t.index ["request_donation_id"], name: "index_donations_on_request_donation_id"
  end

  create_table "request_donations", force: :cascade do |t|
    t.string "campaign_name"
    t.integer "campaign_ID"
    t.string "description"
    t.integer "target_amount"
    t.integer "total_raised"
    t.date "campaign_enddate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "donations", "request_donations"
end
