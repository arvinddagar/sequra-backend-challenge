class Shopper < ApplicationRecord

  has_many :orders
  has_many :merchants, through: :orders

  validates :nif, :email, presence: true

end
