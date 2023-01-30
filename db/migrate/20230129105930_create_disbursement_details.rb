class CreateDisbursementDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :disbursement_details do |t|
      t.integer :merchant_id
      t.float :disbursement_amount

      t.timestamps
    end
  end
end
