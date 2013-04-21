class HiddenLocationsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /hidden_locations
  # GET /hidden_locations.json
  def index
    @hidden_locations = HiddenLocation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hidden_locations }
    end
  end

  # GET /hidden_locations/1
  # GET /hidden_locations/1.json
  def show
    @hidden_location = HiddenLocation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hidden_location }
    end
  end

  # GET /hidden_locations/new
  # GET /hidden_locations/new.json
  def new
    @hidden_location = HiddenLocation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hidden_location }
    end
  end

  # GET /hidden_locations/1/edit
  def edit
    @hidden_location = HiddenLocation.find(params[:id])
  end

  # POST /hidden_locations
  # POST /hidden_locations.json
  def create
    @hidden_location = HiddenLocation.new(params[:hidden_location])

    respond_to do |format|
      if @hidden_location.save
        format.html { redirect_to @hidden_location, notice: 'Hidden location was successfully created.' }
        format.json { render json: @hidden_location, status: :created, location: @hidden_location }
      else
        format.html { render action: "new" }
        format.json { render json: @hidden_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hidden_locations/1
  # PUT /hidden_locations/1.json
  def update
    @hidden_location = HiddenLocation.find(params[:id])

    respond_to do |format|
      if @hidden_location.update_attributes(params[:hidden_location])
        format.html { redirect_to @hidden_location, notice: 'Hidden location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hidden_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hidden_locations/1
  # DELETE /hidden_locations/1.json
  def destroy
    @hidden_location = HiddenLocation.find(params[:id])
    @hidden_location.destroy

    respond_to do |format|
      format.html { redirect_to hidden_locations_url }
      format.json { head :no_content }
    end
  end
end
