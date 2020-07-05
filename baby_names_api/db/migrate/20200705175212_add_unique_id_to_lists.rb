class AddUniqueIdToLists < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :unique_id, :string
  end
end
