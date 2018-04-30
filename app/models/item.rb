class Item < ApplicationRecord
  belongs_to :product
  belongs_to :sale
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }

  before_save :set_total 
  before_update :set_total

  def set_total  
    if self.quantity.blank?  
      return 0 
    else
      if self.product.code=="TICKET"
        Product.find_by_code("TICKET").stock=Product.find_by_code("TICKET").stock-self.quantity
        if self.quantity >= 2
          self.total = (self.quantity/2.to_f).ceil * self.product.price
        else
          self.total = self.quantity * self.product.price  
        end
      
      elsif self.product.code=="HOODIE"
        if self.quantity >= 3
          self.total = self.quantity * 19.00
        else
          self.total = self.quantity * self.product.price  
        end
      
      elsif self.product.code=="HAT"
        self.total = self.quantity * self.product.price  
      else
        self.total = self.quantity * self.product.price
      end
    end
  end 

  def subtotal  
    if self.quantity.blank?  
     return 0  
    else  
      if self.product.code=="TICKET"
        Product.find_by_code("TICKET").stock=Product.find_by_code("TICKET").stock-self.quantity
        if self.quantity >= 2
          (self.quantity/2.to_f).ceil * self.product.price
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
      else
        self.quantity * self.product.price 
      end
    end
  end

end