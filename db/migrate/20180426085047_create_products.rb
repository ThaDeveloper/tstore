class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :quantity

      t.timestamps
    end
  end
end
