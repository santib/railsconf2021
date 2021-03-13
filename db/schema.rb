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

ActiveRecord::Schema.define(version: 2021_03_13_230318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "field_configs", force: :cascade do |t|
    t.bigint "form_config_id", null: false
    t.string "name", null: false
    t.string "label"
    t.integer "field_type", null: false
    t.text "options", array: true
    t.integer "position"
    t.boolean "required", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "repeatable", default: false, null: false
    t.index ["form_config_id"], name: "index_field_configs_on_form_config_id"
  end

  create_table "form_configs", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "references", force: :cascade do |t|
    t.text "strengths_and_weaknesses", null: false
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "other_comments", array: true
  end

  add_foreign_key "field_configs", "form_configs"
end
