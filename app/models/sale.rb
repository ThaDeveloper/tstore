class Sale < ApplicationRecord
    validates :code, :presence => {:message => 'Code cannot be blank, Sale not saved'}
    validates :name, :presence => {:message => 'Name cannot be blank, Sale not saved'}
    validates :price, :presence => {:message => 'Price is required, Sale not saved'}
    validates :quantity, :presence => {:message => 'Quantity cannot be blank, Sale not saved'}
end
