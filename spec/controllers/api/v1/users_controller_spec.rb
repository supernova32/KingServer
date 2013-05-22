require 'spec_helper'

describe Api::V1::UsersController do
  before do
    @user = FactoryGirl.create(:admin)
    @user.ensure_authentication_token!
    sign_in @user
  end

  context 'POST to get info' do
    before do
      @room = FactoryGirl.create(:room)
      @user.rooms << @room
      @user.save!
      post :my_info, { format: :json, auth_token: @user.authentication_token }
    end
    it { should respond_with :success }
    it 'response should include user info' do
      response.body.should include @user.email, @user.rooms.first.number.to_s
    end
  end

end