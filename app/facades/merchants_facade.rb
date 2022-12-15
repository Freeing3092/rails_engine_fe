class MerchantsFacade
  def self.merchants
    json = MerchantsService.merchants

    merchants = json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end