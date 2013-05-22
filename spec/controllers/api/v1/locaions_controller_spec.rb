require 'spec_helper'

describe Api::V1::LocationsController do
  before do
    @user = FactoryGirl.create(:admin)
    @user.ensure_authentication_token!
    sign_in @user
  end

  context 'POST to create location' do
    before do
      post :create, { format: :json, auth_token: @user.authentication_token,
                      hidden_location: { latitude: 48.98763, longitude: 9.76453, name: 'Test Loc', points: 100,
                                         hint: 'Look for the fish with one eye' } }
    end
    it { should respond_with :success }
    it 'response should include message' do
      response.body.should include 'Location added successfully'
    end
  end

  context 'POST to fail creation of location' do
    before do
      post :create, { format: :json, auth_token: @user.authentication_token,
                      hidden_location: { latitude: 48.98763, longitude: 9.76453, name: 'Test Loc', points: 100 } }
    end
    it { should respond_with :bad_request }
    it 'response should include message' do
      response.body.should include "can't be blank"
    end
  end

end
