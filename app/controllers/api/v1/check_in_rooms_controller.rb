require 'geo-distance'

class Api::V1::CheckInRoomsController < ApplicationController
  before_filter :authenticate_user!
  skip_authorization_check

  respond_to :json

  def create

  end

  def check_in
    begin
      @room = Room.find_by_id_hash(params[:room_hash])
      unless @room.nil?
        @distance = GeoDistance::Haversine.geo_distance(params[:latitude], params[:longitude], @room.building.latitude.to_f, @room.building.longitude.to_f).to_meters
        if @distance < 100
          if current_user.rooms.include? @room
            render status: 401, json: { message: 'Duplicate' }
          else
            current_user.rooms << @room
            current_user.save!
            render status: 200, json: { message: 'OK' }
          end
        else
          render status: 401, json: { message: 'Distance error' }
        end
      end
      render status: 500, json: { message: 'Record not found' }
      return

    rescue ActiveRecord::RecordNotFound
      render status: 500, json: { message: 'Record not found' }
      return
    end
  end

  def get_room_info
    begin
      room = Room.find_by_id_hash(params[:room_hash])
      unless room.nil?
        studies = []
        users = room.users
        users.each do |user|
          studies << user.studies
        end

        stats = Hash.new(0)
        studies.each do |st|
          stats[st] += 1
        end

        render status: 200, json: { users: users.size, stats: stats, room: room }
        return
      end
      render status: 500, json: { message: 'Record not found' }

    rescue ActiveRecord::RecordNotFound
      render status: 500, json: { message: 'Record not found' }
      return
    end
  end

  def get_location_info
    begin
      room = HiddenLocation.find(params[:location_id])
      unless room.nil?
        studies = []
        users = room.users
        users.each do |user|
          studies << user.studies
        end

        stats = Hash.new(0)
        studies.each do |st|
          stats[st] += 1
        end

        render status: 200, json: { users: users.size, stats: stats }
        return
      end
      render status: 500, json: { message: 'Record not found' }

    rescue ActiveRecord::RecordNotFound
      render status: 500, json: { message: 'Record not found' }
      return
    end
  end

  def hidden_check_in
    @locations = HiddenLocation.near([params[:latitude], params[:longitude]], 0.015, units: :km)
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

  def get_close_locations
    @locations = HiddenLocation.near([params[:latitude], params[:longitude]], 0.5, units: :km)
    render status: 200, json: { markers: @locations }
  end

  def get_hidden_locations
    @locations = HiddenLocation.all
    render status: 200, json: @locations
  end
end