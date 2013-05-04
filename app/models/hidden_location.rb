class HiddenLocation < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name
  reverse_geocoded_by :latitude, :longitude
  has_many :checked_locations
  has_many :users, through: :checked_locations

  def as_json(options)
    super(except: [:created_at, :updated_at])
  end
end
