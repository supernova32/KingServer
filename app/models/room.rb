class Room < ActiveRecord::Base
  attr_accessible :building, :claimed, :claimed_by, :number
  validates_presence_of :building, :number
  has_many :locations, dependent: :destroy
  has_many :users, through: :locations
end
