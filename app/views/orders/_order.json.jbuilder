json.extract! order, :id, :client_id, :product_id, :product_price, :quantity, :created_at, :updated_at
json.url order_url(order, format: :json)
