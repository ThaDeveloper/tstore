class Item < ApplicationRecord
  belongs_to :product
  belongs_to :sale

  before_save :set_total 
  before_update :set_total

  def set_total  
    if self.quantity.blank?  
      0 
    else
      if self.product.code == "TICKET"
        if self.quantity >= 2
          self.total = (self.quantity/2.to_f).ceil * self.product.price
        else
          self.total = self.quantity * self.product.price  
        end
      
      elsif self.product.code == "HOODIE"
        if self.quantity >= 3
          self.total = self.quantity * 19.00
        else
          self.total = self.quantity * self.product.price  
        end
      
      elsif self.product.code == "HAT"
        self.quantity * self.product.price  
      end
    end
  end 

  def subtotal  
    if self.quantity.blank?  
     0  
    else  
      if self.product.code == "TICKET"
        if self.quantity >= 2
          self.total = (self.quantity/2.to_f).ceil * self.product.price
        else
          self.quantity * self.product.price  
        end
      
      elsif self.product.code == "HOODIE"
        if self.quantity >= 3
          self.quantity * 19.00
        else
          self.quantity * self.product.price  
        end 
      elsif self.product.code == "HAT"
        self.quantity * self.product.price  
      end
    end  
  end

end