class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :user_id
      t.integer :room_id

      t.timestamps
    end
  end
end
