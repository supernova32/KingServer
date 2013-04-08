class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :building
      t.integer :number
      t.boolean :claimed, default: false
      t.string :claimed_by

      t.timestamps
    end
  end
end
