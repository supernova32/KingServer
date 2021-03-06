class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :building_id
      t.string :number
      t.boolean :claimed, default: false
      t.string :claimed_by
      t.text :id_hash
      t.string :qr_code_path
      t.binary :qr_data

      t.timestamps
    end
  end
end
