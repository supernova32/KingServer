class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :building_id
      t.integer :number
      t.boolean :claimed, default: false
      t.string :claimed_by
      t.text :id_hash
      t.string :qr_code_path

      t.timestamps
    end
  end
end
