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

ActiveRecord::Schema[7.0].define(version: 2023_05_13_051024) do
  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "nickname", limit: 191, null: false
    t.string "email", limit: 191, null: false
    t.string "crypted_password", limit: 191
    t.string "salt", limit: 191
    t.integer "role", default: 0, null: false
    t.text "bio"
    t.string "sns_identifier", limit: 191
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end