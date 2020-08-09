class CreateKindles < ActiveRecord::Migration[6.0]
  def change
    create_table :kindles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
