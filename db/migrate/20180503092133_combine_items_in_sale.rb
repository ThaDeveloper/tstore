class CombineItemsInSale < ActiveRecord::Migration[5.1]
  def up
    Sale.all.each do |sale|
      sums = sale.items.group(:product_id).sum(:quantity)
      sums.each do |product_id, quantity|
        if quantity > 1
          sale.items.where(product_id: product_id).delete_all

          item = sale.items.build(product_id: product_id)
          item.quantity = quantity
          item.save!
        end
      end
    end
  end

  def down
    #split items with a quantity of 1 or more into multiple items
    Item.where("quantity>1").each do |item|
      item.quantity.times do
        Item.create(
          sale_id: item.sale_id,
          product_id: item.product_id,
          quantity: 1
        )
      end
      # remove original line item
      item.destroy
    end
  end
end
