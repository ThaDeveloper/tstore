class Product < ApplicationRecord
  belongs_to :user
  has_many :items

  validates :code, :presence => {:message => 'cannot be blank, Product not saved'}
  validates :name, :presence => {:message => 'cannot be blank, Product not saved'}
  validates :price, :presence => {:message => 'is required, Product not saved'}
  
  include PublicActivity::Model  
  tracked owner: ->(controller, model) { controller && controller.current_user} 
  
end
