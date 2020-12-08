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

ActiveRecord::Schema.define(version: 2020_12_07_155755) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "muppets", force: :cascade do |t|
    t.string "name"
    t.string "fur_color"
    t.string "personality"
    t.string "partner"
    t.string "image"
    t.bigint "show_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["show_id"], name: "index_muppets_on_show_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "show_name"
    t.string "episode_name"
    t.integer "episode_number"
    t.datetime "date"
    t.string "link"
    t.boolean "availability"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "muppets", "shows"
end
