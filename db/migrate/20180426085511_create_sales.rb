class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.string :code
      t.string :name
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :quantity
      t.datetime :created_at

      t.timestamps
    end
  end
end
