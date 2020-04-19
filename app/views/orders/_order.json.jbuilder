json.extract! order, :id, :type, :state, :restaurant_id, :cat_id, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)
