require 'geo-distance'

class Api::V1::CheckInRoomsController < ApplicationController
  before_filter :authenticate_user!
  skip_authorization_check

  respond_to :json

  def create

  end

  def check_in
    @room = Room.find_by_id_hash(params[:room_hash])
    @distance = GeoDistance::Haversine.geo_distance(params[:latitude], params[:longitude], @room.building.latitude, @room.building.longitude).to_meters
    if @distance < 100
      if current_user.rooms.include? @room
        render status: 401, json: { message: 'Duplicate'}
      else
        current_user.rooms << @room
        current_user.save!
        render status: 200, json: { message: 'OK'}
      end
    else
      render status: 401, json: { message: 'Distance error'}
    end
  end

  def get_room_info
    @room = Room.find_by_id_hash(params[:room_hash])
    render status: 200, json: @room
  end
end