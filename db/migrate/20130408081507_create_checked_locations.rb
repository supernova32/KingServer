class CreateCheckedLocations < ActiveRecord::Migration
  def change
    create_table :checked_locations do |t|
      t.integer :user_id
      t.integer :hidden_location_id

      t.timestamps
    end
  end
end
