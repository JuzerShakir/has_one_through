class CreateAmazonPayments < ActiveRecord::Migration[5.2]
  def change
    create_table :amazon_payments do |t|
      t.float :cashback
      t.string :upi
      t.float :balance
      t.references :amazon_account, foreign_key: true

      t.timestamps
    end
  end
end
