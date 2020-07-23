class CreateHighlights < ActiveRecord::Migration[6.0]
  def change
    create_table :highlights do |t|
      t.references :user, null: false, foreign_key: true
      t.references :source, null: false, foreign_key: true
      t.text :content
      t.string :page
      t.boolean :favorite, default: false

      t.timestamps
    end
  end
end
