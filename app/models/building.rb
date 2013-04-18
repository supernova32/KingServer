class Building < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name
  has_many :rooms
end
