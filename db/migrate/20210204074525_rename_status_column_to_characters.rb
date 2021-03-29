class RenameStatusColumnToCharacters < ActiveRecord::Migration[6.0]
  def change
    rename_column :characters, :status, :button
  end
end
