class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.merchants
  end

  def show
    # @merchant = Merchant.find(params[:id])
    @items = ItemsFacade.merchant_items(params[:id])
    # require 'pry'; binding.pry
  end
end
