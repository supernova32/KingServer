class CheckedLocation < ActiveRecord::Base
  attr_accessible :hidden_location_id, :user_id
  belongs_to :user
  belongs_to :hidden_location
end
