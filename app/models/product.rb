class Product < ApplicationRecord
    validates :code, :presence => {:message => 'Code cannot be blank, Product not saved'}
    validates :name, :presence => {:message => 'Name cannot be blank, Product not saved'}
    validates :price, :presence => {:message => 'Price is required, Product not saved'}
    validates :quantity, :presence => {:message => 'Quantity cannot be blank, Product not saved'}
end
