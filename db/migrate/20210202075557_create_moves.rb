class CreateMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :moves do |t|
      t.string :moves_name
      t.string :command
      t.string :throw_tech
      t.string :hitbox
      t.string :damage
      t.string :effect
      t.string :startup
      t.string :block
      t.string :hit
      t.string :counter_hit
      t.references :character, null: false, foreign_key: true
    end
  end
end