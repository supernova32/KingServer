class Api::V1::UsersController < ApplicationController
  before_filter :authenticate_user!
  skip_authorization_check

  respond_to :json

  def my_info
    render json: {user: current_user, rooms: current_user.rooms, locations: current_user.hidden_locations}
  end

end