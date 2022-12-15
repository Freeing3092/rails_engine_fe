class ItemsFacade
  def self.merchant_items(merchant_id)
    json = MerchantsItemsService.merchant_items(merchant_id)

    items = json[:data].map do |item|
      Item.new(item)
    end
  end
end