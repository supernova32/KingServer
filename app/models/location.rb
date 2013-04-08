class Location < ActiveRecord::Base
  attr_accessible :room_id, :user_id
  belongs_to :user
  belongs_to :room
end
