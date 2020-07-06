class AddEnabledToBabies < ActiveRecord::Migration[6.0]
  def change
    add_column :babies, :enabled, :boolean, default: true
  end
end
