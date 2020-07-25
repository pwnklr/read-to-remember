class RemoveLastNameFromAuthors < ActiveRecord::Migration[6.0]
  def change
    remove_column :authors, :last_name, :string
  end
end
