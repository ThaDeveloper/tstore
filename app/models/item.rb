class Item < ApplicationRecord
  belongs_to :product
  belongs_to :sale
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }

  before_save :set_total, :subtotal
  after_save :remove_from_stock
  after_destroy :return_to_stock
  
  #These two methods updates product stock once a sale has been made
  def remove_from_stock
    product.stock -= self.quantity
    product.save
  end

  def return_to_stock
    product.stock += self.quantity
    product.save
  end

  #To be called for products that have promotion eg 2-for-1 buy one get one free 
  def promote
    if self.quantity >= 2
      self.total = (self.quantity/2.to_f).ceil * self.product.price
    else
      self.total = self.quantity * self.product.price  
    end
  end

  #Updates the totals of individual sale item 
  def set_total  
    if self.quantity.blank?  
      return 0 
    else
      if self.product.promotion_opt==true
        self.promote
      else
        if self.quantity >= 3 &&  self.product.promotion_opt == false
          self.total = self.quantity * self.product.discount_price
        else
          self.total = self.quantity * self.product.price
        end 
      end
    end
  end 

  #Gets subtotal for for the sale items
  def subtotal  
    if self.quantity.blank?  
     return 0  
    else  
      if self.product.promotion_opt == true
        if self.quantity >= 2
          (self.quantity/2.to_f).ceil * self.product.price
        else
          self.quantity * self.product.price  
        end
      else
        if self.quantity >= 3 && self.product.promotion_opt == false
          self.quantity * self.product.discount_price
        else
          self.quantity * self.product.price
        end
      end
    end
  end

end