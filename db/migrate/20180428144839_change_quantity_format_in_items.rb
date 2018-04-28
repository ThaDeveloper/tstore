class ChangeQuantityFormatInItems < ActiveRecord::Migration[5.1]
  def up
    change_column :items, :quantity, :integer
  end

  def down
    change_column :items, :quantity, :decimal
  end
end
