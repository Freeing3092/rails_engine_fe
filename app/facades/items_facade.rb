class ItemsFacade
  def self.merchant_items(merchant_id)
    json = MerchantsService.merchant_items(merchant_id)

    items = json[:data].map do |item|
      Item.new(item)
    end
  end

  def self.items
    json = ItemsService.items

    items = json[:data].map do |item|
      Item.new(item)
    end
  end

  def self.item(item_id)
    json = ItemsService.item(item_id)

    Item.new(json[:data])
  end
end