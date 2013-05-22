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

end