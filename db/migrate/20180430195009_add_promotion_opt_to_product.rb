class AddPromotionOptToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :promotion_opt, :boolean
  end
end
