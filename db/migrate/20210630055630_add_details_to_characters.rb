class AddDetailsToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :fullname, :string
    add_column :characters, :english_name, :string
    add_column :characters, :english_fullname, :string
    add_column :characters, :sex, :string
    add_column :characters, :country, :string
    add_column :characters, :participation, :string
    add_column :characters, :fighting_style, :string
    add_column :characters, :summary, :text
  end
end
