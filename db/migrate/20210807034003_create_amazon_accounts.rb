class CreateAmazonAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :amazon_accounts do |t|
      t.string :public_name
      t.binary :profile_photo
      t.string :email
      t.text :about
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
