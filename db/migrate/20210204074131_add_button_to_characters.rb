class AddButtonToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :status, :string
  end
end
