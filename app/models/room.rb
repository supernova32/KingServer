class Room < ActiveRecord::Base
  attr_accessible :building_id, :claimed, :claimed_by, :number, :qr_code_path
  validates_presence_of :building_id, :number
  has_many :locations, dependent: :destroy
  has_many :users, through: :locations
end
