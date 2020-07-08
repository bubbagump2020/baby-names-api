class RemoveTimestampsFromBabies < ActiveRecord::Migration[6.0]
  def change
    remove_column :babies, :created_at, :string
    remove_column :babies, :updated_at, :string
  end
end
