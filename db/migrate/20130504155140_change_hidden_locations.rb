class ChangeHiddenLocations < ActiveRecord::Migration
  def up
    change_column :hidden_locations, :latitude, :decimal, precision: 10, scale: 7
    change_column :hidden_locations, :longitude, :decimal, precision: 10, scale: 7
  end

  def down
    change_column :hidden_locations, :latitude, :float
    change_column :hidden_locations, :longitude, :float
  end
end
