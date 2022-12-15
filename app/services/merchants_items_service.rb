class MerchantsItemsService
  def self.conn
    Faraday.new(url: 'http://localhost:3000')
  end

  def self.merchant_items(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end
end