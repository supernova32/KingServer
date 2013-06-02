require 'geo-distance'

class Api::V1::CheckInsController < ApplicationController
  before_filter :authenticate_user!
  skip_authorization_check

  respond_to :json

  def check_in
    begin
      @room = Room.find_by_id_hash(params[:room_hash])
      unless @room.nil?
        if @room.claimed?
          render status: 401, json: { message: 'Claimed' }
          return
        end
        @distance = GeoDistance::Haversine.geo_distance(params[:latitude], params[:longitude], @room.building.latitude.to_f, @room.building.longitude.to_f).to_meters
        if @distance < 800
          if current_user.rooms.include? @room
            render status: 401, json: { message: 'Duplicate' }
            return
          else
            current_user.rooms << @room
            current_user.save!
            render status: 200, json: { message: 'OK' }
            return
          end
        else
          render status: 401, json: { message: 'Distance error' }
          return
        end
      end
      render status: 500, json: { message: 'Record not found' }
      return

    rescue ActiveRecord::RecordNotFound
      render status: 500, json: { message: 'Record not found' }
      return
    end
  end

  def hidden_check_in
    @locations = HiddenLocation.near([params[:latitude], params[:longitude]], 0.025, units: :km)
    if @locations.size == 1
      if current_user.rooms.include? @locations
        render status: 401, json: { message: 'Duplicate' }
      else
        current_user.hidden_locations << @locations.first
        current_user.save!
        render status: 200, json: { message: 'OK', location: @locations.first }
      end
    else
      render status: 401, json: { message: 'Distance error' }
    end
  end
end