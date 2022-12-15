require 'rails_helper'

RSpec.describe Merchant do
  describe 'initialize' do
    it 'has readable attributes' do
      merch_hash = {id: 1, attributes: {name: "Tom's Toys"}}
      merchant = Merchant.new(merch_hash)

      expect(merchant).to be_a Merchant
      expect(merchant.name).to be_a String
    end
  end
end