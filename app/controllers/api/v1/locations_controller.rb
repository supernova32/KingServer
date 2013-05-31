class Api::V1::LocationsController < ApplicationController
  before_filter :authenticate_user!
  skip_authorization_check

  respond_to :json

  def create
    if request.format != :json
      render status: 406, json: { message: 'The request must be json' }
      return
    end

    @hidden_location = HiddenLocation.new(params[:hidden_location])

    if @hidden_location.save
      render status: 200, json: { message: 'Location added successfully' }
    else
      render status: 400, json: @hidden_location.errors
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

end