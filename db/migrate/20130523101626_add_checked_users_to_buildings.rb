class AddCheckedUsersToBuildings < ActiveRecord::Migration
  def change
    add_column :buildings, :checked_users, :integer, default: 0
  end
end
