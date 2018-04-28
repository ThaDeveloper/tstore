class Product < ApplicationRecord
  belongs_to :user
  has_many :items

  validates :code, :presence => {:message => 'Code cannot be blank, Product not saved'}
  validates :name, :presence => {:message => 'Name cannot be blank, Product not saved'}
  validates :price, :presence => {:message => 'Price is required, Product not saved'}
  
end
