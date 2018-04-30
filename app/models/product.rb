class Product < ApplicationRecord
  belongs_to :user
  has_many :items

  validates :code, :presence => {:message => 'cannot be blank, Product not saved'}
  validates :name, :presence => {:message => 'cannot be blank, Product not saved'}
  validates_numericality_of :price, :greater_than => 0
  validates :stock, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
  include PublicActivity::Model  
  tracked owner: ->(controller, model) { controller && controller.current_user} 
  
end
