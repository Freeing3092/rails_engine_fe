require 'rails_helper'

RSpec.describe "Items", type: :request do
  describe "GET /index" do
    it "returns http success" do
      items = ItemsService.items

      expect(items[:data]).to be_a Array
      expect(items[:data][0][:attributes][:name]).to be_a String
    end
  end

  describe "GET /show" do
    it "returns http success" do
      item = ItemsService.item(179)

      expect(item[:data]).to be_a Hash
      expect(item[:data][:id]).to eq('179')
      expect(item[:data][:attributes][:name]).to be_a String
      expect(item[:data][:attributes][:description]).to be_a String
      expect(item[:data][:attributes][:unit_price]).to be_a Float
    end
  end

end
