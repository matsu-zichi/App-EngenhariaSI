json.extract! product, :id, :nome, :validade, :created_at, :updated_at
json.url product_url(product, format: :json)
