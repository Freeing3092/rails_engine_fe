require 'rails_helper'

RSpec.describe "Merchants", type: :request do
  describe "GET /index" do
    it "returns JSON object" do
      merchants = MerchantsService.merchants
      
      expect(merchants[:data]).to be_a Array
      expect(merchants[:data][0][:attributes][:name]).to be_a String
    end
  end
  
  describe "GET /show" do
    it "returns http success" do
      items = MerchantsItemsService.merchant_items(1)
      
      expect(items[:data]).to be_a Array
      expect(items[:data][0][:attributes][:name]).to be_a String
      expect(items[:data][0][:attributes][:description]).to be_a String
      expect(items[:data][0][:attributes][:unit_price]).to be_a Float
    end
  end

end
