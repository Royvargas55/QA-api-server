require "rails_helper"

RSpec.describe Api::V1::AnswersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/api/v1/questions/1/answers").to route_to("api/v1/answers#index", question_id: '1')
    end

    it "routes to #create" do
      expect(:post => "/api/v1/questions/1/answers").to route_to("api/v1/answers#create", question_id: '1')
    end
  end
end
