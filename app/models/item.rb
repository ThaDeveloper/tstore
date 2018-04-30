class Item < ApplicationRecord
  belongs_to :product
  belongs_to :sale
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }

  before_save :set_total

  def promote
    if self.quantity >= 2
      self.total = (self.quantity/2.to_f).ceil * self.product.price
    else
      self.total = self.quantity * self.product.price  
    end
  end

  def set_total  
    if self.quantity.blank?  
      return 0 
    else
      self.product.stock=self.product.stock-self.quantity
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