class ItemsService
  def self.conn
    Faraday.new('http://localhost:3000')
  end

  def self.items
    response = conn.get('/api/v1/items')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.item(item_id)
    response = conn.get("/api/v1/items/#{item_id}")
    JSON.parse(response.body, symbolize_names: true)
  end
end