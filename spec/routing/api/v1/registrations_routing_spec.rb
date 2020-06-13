require 'rails_helper'

RSpec.describe Api::V1::RegistrationsController, type: :routing do
  describe 'registration routes' do
    it 'should route to registrations#create' do
      expect(post '/api/v1/sign_up').to route_to('api/v1/registrations#create')
    end
  end
end
