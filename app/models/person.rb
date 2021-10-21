class Person < ApplicationRecord
  has_one :amazon_account
  has_one :amazon_payment, through: :amazon_account
end
