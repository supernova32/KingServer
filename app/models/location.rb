class Location < ActiveRecord::Base
  attr_accessible :room_id, :user_id
  belongs_to :user
  belongs_to :room

  after_save do
    self.room.building.checked_users += self.room.users.size
    self.room.building.save!
  end
end
