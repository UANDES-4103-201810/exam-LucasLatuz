json.extract! order, :id, :customer_id, :paymentmethod_id, :created_at, :updated_at
json.url order_url(order, format: :json)
