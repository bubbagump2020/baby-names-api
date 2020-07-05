class CreateBabies < ActiveRecord::Migration[6.0]
  def change
    create_table :babies do |t|
      t.integer :list_id
      t.string :baby_name

      t.timestamps
    end
  end
end
