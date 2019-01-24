require 'rails_helper'
RSpec.describe ContentsController do
  describe "GET #index" do
    before do
      get :index
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "JSON body response contains expected content attributes" do
      json_response = JSON.parse(response.body)
      expect(json_response.first.keys).to match_array(["id", "title", "author", "summary", "content", "published_date"])
    end
  end
end
