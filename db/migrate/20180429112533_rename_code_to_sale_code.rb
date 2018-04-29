class RenameCodeToSaleCode < ActiveRecord::Migration[5.1]
  def change
    rename_column :sales, :code, :sale_code
  end
end
