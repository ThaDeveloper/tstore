class Product < ApplicationRecord
  belongs_to :user
  has_many :items
  
  validates :code, :presence => {:message => 'Code cannot be blank, Sale not saved'}
  validates :name, :presence => {:message => 'Name cannot be blank, Sale not saved'}
  validates :price, :presence => {:message => 'Price is required, Sale not saved'}

end
