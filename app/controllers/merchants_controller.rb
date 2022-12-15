class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.merchants
  end

  def show
    @items = ItemsFacade.merchant_items(params[:id])
  end
end
