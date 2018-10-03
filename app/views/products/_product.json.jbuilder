json.extract! product, :id, :cod_producto, :nombre, :marca, :color, :medidas, :vigente, :created_at, :updated_at
json.url product_url(product, format: :json)
