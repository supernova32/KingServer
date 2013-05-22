class AddExtrasToHiddenLocations < ActiveRecord::Migration
  def change
    add_column :hidden_locations, :points, :integer
    add_column :hidden_locations, :hint, :string
  end
end
