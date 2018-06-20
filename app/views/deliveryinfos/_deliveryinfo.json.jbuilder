json.extract! deliveryinfo, :id, :line1, :line2, :phone, :created_at, :updated_at
json.url deliveryinfo_url(deliveryinfo, format: :json)
