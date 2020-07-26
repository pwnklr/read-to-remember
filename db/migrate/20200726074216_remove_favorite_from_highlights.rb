class RemoveFavoriteFromHighlights < ActiveRecord::Migration[6.0]
  def change
    remove_column :highlights, :favorite
  end
end
