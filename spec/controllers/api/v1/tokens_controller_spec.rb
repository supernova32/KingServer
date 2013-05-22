require 'spec_helper'

describe Api::V1::TokensController do
  before do
    @user = FactoryGirl.create(:admin)
    @user.ensure_authentication_token!
  end

  context 'POST to get token' do
    before do
      post :create, { format: :json, email: @user.email, password: 'testPassword' }
    end
    it { should respond_with :success }
    it 'response should include auth token' do
      response.body.should include @user.authentication_token
    end
  end

end
