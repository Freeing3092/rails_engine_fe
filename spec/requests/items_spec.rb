require 'rails_helper'

RSpec.describe "Items", type: :request do
  describe "GET /index" do
    it "returns http success" do
      items = ItemsService.items

      expect(items[:data]).to be_a Array
      expect(items[:data][0][:attributes][:name]).to be_a String
    end
  end

  xdescribe "GET /show" do
    it "returns http success" do
      get "/items/show"
      expect(response).to have_http_status(:success)
    end
  end

end
