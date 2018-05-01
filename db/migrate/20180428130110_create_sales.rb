class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.string :name
      t.decimal :total, :precision => 8, :scale => 2
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
