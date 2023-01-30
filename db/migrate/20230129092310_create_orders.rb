class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :merchant_id
      t.integer :shopper_id
      t.float :amount
      t.float :merchant_amount
      t.float :fee
      t.timestamp :completed_at

      t.timestamps
    end
  end
end
