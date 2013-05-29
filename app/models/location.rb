class Location < ActiveRecord::Base
  attr_accessible :room_id, :user_id
  belongs_to :user
  belongs_to :room

  after_save do
    self.room.building.checked_users += 1
    self.room.building.save!
    ClaimsWorker.perform_async(self.room_id, self.user_id)
  end
end
