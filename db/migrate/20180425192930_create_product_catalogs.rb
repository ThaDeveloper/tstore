class CreateProductCatalogs < ActiveRecord::Migration[5.1]
  def change
    create_table :product_catalogs do |t|
      t.string :product_code
      t.string :product_name
      t.integer :quantities
      t.decimal :price, :precision => 8, :scale => 3

      t.timestamps
    end
  end
end
