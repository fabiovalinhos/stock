class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :client, foreign_key: true
      t.references :product, foreign_key: true
      t.float :product_price
      t.integer :quantity

      t.timestamps
    end
  end
end
