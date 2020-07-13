class CreateBabies < ActiveRecord::Migration[6.0]
  def change
    create_table :babies do |t|
      t.integer :'list-id'
      t.string :'baby-name'

      t.timestamps
    end
  end
end
