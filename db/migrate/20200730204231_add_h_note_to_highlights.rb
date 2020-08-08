class AddHNoteToHighlights < ActiveRecord::Migration[6.0]
  def change
    add_column :highlights, :h_note, :text
  end
end
