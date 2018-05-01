class Sale < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :delete_all
  accepts_nested_attributes_for :items, allow_destroy: true

  validates :sale_code, :presence => {:message => 'is required, Sale not saved'}
  validates :items, :presence => {:message => '- atleast one item is required, Sale not saved'}
  before_save :subtotals, :total_all 

  include PublicActivity::Model  
  tracked owner: ->(controller, model) { controller && controller.current_user} 
  
  #Map through the subtotal function for each individual item
  def subtotals  
    self.items.map { |i| i.subtotal }  
  end  

  #Add together the subtotals
  def total_all  
    subtotals.sum  
  end  
   
end
