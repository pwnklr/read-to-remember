class AddDisplayOnToHighlights < ActiveRecord::Migration[6.0]
  def change
    add_column :highlights, :display_on, :date
  end
end
