class Merchant < ApplicationRecord

  has_many :disbursement_details
  has_many :orders
  has_many :shoppers, through: :orders

end
