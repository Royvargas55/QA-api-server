require 'rails_helper'

RSpec.describe Api::V1::AccessTokensController, type: :routing do
  describe 'access tokens routes' do
    it 'should route to access_tokens create action' do
      expect(post '/api/v1/login').to route_to('api/v1/access_tokens#create')
    end

    it 'should route to access_tokens destroy action' do
      expect(delete '/api/v1/logout').to route_to('api/v1/access_tokens#destroy')
    end
  end  
end
