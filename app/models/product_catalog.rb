class ProductCatalog < ApplicationRecord
    validates :product_code, presence: true
    validates :product_name, presence: true
    validates :quantities, presence: true
    validates :price, presence: true
end
