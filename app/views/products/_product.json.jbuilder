json.extract! product, :id, :code, :name, :price, :quantity, :created_at, :updated_at
json.url product_url(product, format: :json)
