class DisbursementDetail < ApplicationRecord

  belongs_to :merchant

  validates :merchant_id, presence: true

end
