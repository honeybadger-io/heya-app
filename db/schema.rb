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

ActiveRecord::Schema.define(version: 2020_09_25_235813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "heya_campaign_memberships", force: :cascade do |t|
    t.string "user_type", null: false
    t.bigint "user_id", null: false
    t.string "campaign_gid", null: false
    t.boolean "concurrent", default: false, null: false
    t.datetime "last_sent_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "step_gid", null: false
    t.index ["user_type", "user_id", "campaign_gid"], name: "user_campaign_idx", unique: true
  end

  create_table "heya_campaign_receipts", force: :cascade do |t|
    t.string "user_type", null: false
    t.bigint "user_id", null: false
    t.string "step_gid", null: false
    t.datetime "sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_type", "user_id", "step_gid"], name: "user_step_idx", unique: true
  end

  create_table "mailkick_opt_outs", force: :cascade do |t|
    t.string "email"
    t.string "user_type"
    t.bigint "user_id"
    t.boolean "active", default: true, null: false
    t.string "reason"
    t.string "list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_mailkick_opt_outs_on_email"
    t.index ["user_type", "user_id"], name: "index_mailkick_opt_outs_on_user_type_and_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.jsonb "traits", default: {}, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "confirmed_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["traits"], name: "index_users_on_traits"
  end

end
