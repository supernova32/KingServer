class CreateHiddenLocations < ActiveRecord::Migration
  def change
    create_table :hidden_locations do |t|
      t.string :name
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
