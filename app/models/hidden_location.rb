class HiddenLocation < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name
  has_many :checked_locations
  has_many :users, through: :checked_locations
end
