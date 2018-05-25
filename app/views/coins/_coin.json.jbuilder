json.extract! coin, :id, :name, :num_record, :material, :country, :denomination, :batch, :location, :issuer, :serial_number, :part_number, :quantity, :created_at, :updated_at
json.url coin_url(coin, format: :json)
