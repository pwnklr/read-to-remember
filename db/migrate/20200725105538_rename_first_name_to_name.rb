class RenameFirstNameToName < ActiveRecord::Migration[6.0]
  def change
    rename_column :authors, :first_name, :name
  end
end
