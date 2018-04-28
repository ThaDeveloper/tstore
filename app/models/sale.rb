class Sale < ApplicationRecord
    validates :code, :presence => {:message => 'Code cannot be blank, Sale not saved'}
    validates :name, :presence => {:message => 'Name cannot be blank, Sale not saved'}
    validates :price, :presence => {:message => 'Price is required, Sale not saved'}
    validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
    
    def total
        if code == "TICKET"
            name = "Triggerise Ticket"
            ticket_sub = (quantity/2.to_f).ceil*price
        end
        if code == "HOODIE"
            name = "Triggerise Hoodie"
            if quantity >= 3
                hoodie_sub = quantity * 19.00
            else
                hoodie_sub = quantity * price
            end
        end
        if code == "HAT"
            name = "Triggerise Hat"
            hat_sub = quantity * price
        end
        
        total = ticket_sub + hoodie_sub + hat_sub
    end
end
