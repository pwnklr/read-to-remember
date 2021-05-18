class AddContentToImage < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :content, :string
  end
end
