require 'rails_helper'

RSpec.describe Api::V1::QuestionsController, type: :routing do
  describe 'questions routes' do
    it 'should route to questions index' do
      expect(get '/api/v1/questions').to route_to('api/v1/questions#index')
    end
  
    it 'should route to questions show' do
      expect(get '/api/v1/questions/1').to route_to('api/v1/questions#show', id: '1')
    end
  
    it 'should route to questions create' do
      expect(post '/api/v1/questions').to route_to('api/v1/questions#create')
    end
  
    it 'should route to questions update' do
      expect(put '/api/v1/questions/1').to route_to('api/v1/questions#update', id: '1')
      expect(patch '/api/v1/questions/1').to route_to('api/v1/questions#update', id: '1')
    end
  
    it 'should route to questions destroy' do
      expect(delete '/api/v1/questions/1').to route_to('api/v1/questions#destroy', id: '1')
    end
  end
end
