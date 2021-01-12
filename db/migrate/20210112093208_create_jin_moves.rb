class CreateJinMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :jin_moves do |t|
      t.string :move_name
      t.text   :command
      t.string :hitbox
      t.string :damage
      t.text   :effect
      t.string :startup
      t.string :block
      t.string :hit
      t.string :counter
      t.references :character, null: false, foreign_key: true
      
    end
  end
end
