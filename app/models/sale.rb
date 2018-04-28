class Sale < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :delete_all
  accepts_nested_attributes_for :items, allow_destroy: true

  include PublicActivity::Model  
  tracked owner: ->(controller, model) { controller && controller.current_user} 
  
  def subtotals  
    self.items.map { |i| i.subtotal }  
  end  
  def total_all  
    subtotals.sum  
  end  
   
end
