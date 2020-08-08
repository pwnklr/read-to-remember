class AddMyNoteToHighlights < ActiveRecord::Migration[6.0]
  def change
    add_column :highlights, :my_note, :text
  end
end
