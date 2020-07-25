class RenameTypeToCategory < ActiveRecord::Migration[6.0]
  def change
    rename_column :sources, :type, :category
  end
end
