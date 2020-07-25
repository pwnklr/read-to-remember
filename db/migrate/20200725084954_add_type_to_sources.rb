class AddTypeToSources < ActiveRecord::Migration[6.0]
  def change
    add_column :sources, :type, :string
  end
end
