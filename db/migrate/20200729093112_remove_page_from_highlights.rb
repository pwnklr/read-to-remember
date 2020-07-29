class RemovePageFromHighlights < ActiveRecord::Migration[6.0]
  def change
    remove_column :highlights, :page
  end
end
