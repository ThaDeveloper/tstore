class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.string :product_code
      t.string :product_name
      t.integer :quantity
      t.decimal :price, :precision => 8, :scale => 3
      t.datetime :created_at

      t.timestamps
    end
  end
end
