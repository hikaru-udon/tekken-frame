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

ActiveRecord::Schema.define(version: 2021_01_12_093208) do

  create_table "characters", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "jin_moves", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "move_name"
    t.text "command"
    t.string "hitbox"
    t.string "damage"
    t.text "effect"
    t.string "startup"
    t.string "block"
    t.string "hit"
    t.string "counter"
    t.bigint "character_id", null: false
    t.index ["character_id"], name: "index_jin_moves_on_character_id"
  end

  add_foreign_key "jin_moves", "characters"
end