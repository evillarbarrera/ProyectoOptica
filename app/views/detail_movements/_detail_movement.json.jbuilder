json.extract! detail_movement, :id, :header_movements_id, :products_id, :precio_unitario, :cantidad, :total, :created_at, :updated_at
json.url detail_movement_url(detail_movement, format: :json)
