json.extract! product_catalog, :id, :product_code, :product_name, :quantities, :price, :created_at, :updated_at
json.url product_catalog_url(product_catalog, format: :json)
