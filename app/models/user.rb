class User < ApplicationRecord
  validates :name, :house_number, :street_name, :suburb, :dustbin_id, :dustbin_size, :payment_code, :collection_type,
            presence: true
end
