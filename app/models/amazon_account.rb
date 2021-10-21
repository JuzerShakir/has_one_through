class AmazonAccount < ApplicationRecord
  belongs_to :person
  has_one :amazon_payment
end
