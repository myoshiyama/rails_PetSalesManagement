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

ActiveRecord::Schema[7.0].define(version: 2023_11_27_144000) do
  create_table "breeding_pets", charset: "utf8mb4", force: :cascade do |t|
    t.string "color"
    t.integer "breeding_period"
    t.string "gender"
    t.decimal "sales_price", precision: 10
    t.date "sales_day"
    t.date "birthday"
    t.integer "weight"
    t.text "breeding_memo"
    t.text "image_path"
    t.string "change_parent_cat"
    t.bigint "customer_id", null: false
    t.bigint "fatherpet_id", null: false
    t.bigint "motherpet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "fk_rails_5a2e4e1d1b"
    t.index ["fatherpet_id"], name: "fk_rails_75c0d09b80"
    t.index ["motherpet_id"], name: "fk_rails_65047087f7"
  end

  create_table "customers", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "father_pets", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.date "birthday"
    t.text "image_path"
    t.string "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mother_pets", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.date "birthday"
    t.text "image_path"
    t.string "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "breeding_pets", "customers"
  add_foreign_key "breeding_pets", "father_pets", column: "fatherpet_id"
  add_foreign_key "breeding_pets", "mother_pets", column: "motherpet_id"
end
