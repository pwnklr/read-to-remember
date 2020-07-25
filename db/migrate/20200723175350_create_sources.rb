class CreateSources < ActiveRecord::Migration[6.0]
  def change
    create_table :sources do |t|
      t.references :author, null: false, foreign_key: true
      t.string :title
      t.string :publishing_year

      t.timestamps
    end
  end
end
