class RenameNameToCode < ActiveRecord::Migration[5.1]
  def change
    rename_column :sales, :name, :code
  end
end
