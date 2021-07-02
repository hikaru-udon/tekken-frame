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

ActiveRecord::Schema.define(version: 2021_06_30_060814) do

  create_table "characters", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "fullname"
    t.string "english_name"
    t.string "english_fullname"
    t.string "sex"
    t.string "country"
    t.string "participation"
    t.string "fighting_style"
    t.text "summary"
  end

  create_table "moves", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "moves_name"
    t.string "command"
    t.string "throw_tech"
    t.string "hitbox"
    t.string "damage"
    t.string "effect"
    t.string "startup"
    t.string "block"
    t.string "hit"
    t.string "counter_hit"
    t.bigint "character_id", null: false
    t.index ["character_id"], name: "index_moves_on_character_id"
  end

  add_foreign_key "moves", "characters"
end
