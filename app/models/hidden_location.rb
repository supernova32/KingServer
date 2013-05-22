class HiddenLocation < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name, :points, :hint
  reverse_geocoded_by :latitude, :longitude
  validates_presence_of :latitude, :longitude, :name, :points, :hint
  has_many :checked_locations
  has_many :users, through: :checked_locations

  def as_json(options)
    super(except: [:created_at, :updated_at])
  end
end
