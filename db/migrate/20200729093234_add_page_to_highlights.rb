class AddPageToHighlights < ActiveRecord::Migration[6.0]
  def change
    add_column :highlights, :page, :integer
  end
end
