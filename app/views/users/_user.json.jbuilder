json.extract! user, :id, :name, :house_number, :street_name, :suburb, :dustbin_id, :dustbin_size, :payment_code, :collection_type, :created_at, :updated_at
json.url user_url(user, format: :json)
