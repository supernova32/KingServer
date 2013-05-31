class Api::V1::RoomsController < ApplicationController
  before_filter :authenticate_user!
  skip_authorization_check

  respond_to :json

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


end