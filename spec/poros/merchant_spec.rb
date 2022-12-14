require 'rails_helper'

RSpec.describe Merchant do
  describe 'initialize' do
    it 'has readable attributes' do
      merchant = Merchant.new("Tom's Toys")

      expect(merchant).to be_a Merchant
      expect(merchant.name).to be_a String
    end
  end
end