class Order < ApplicationRecord

  belongs_to :merchant
  belongs_to :shopper

  before_create :calculate_disbursement_and_fee!

  private

  def calculate_disbursement_and_fee!
  	self.fee = fee_amount.round(2)
  	self.merchant_amount = (amount - fee).to_f.round(2)
  end

  def fee_amount
    case
    when amount < 50
      amount * 0.01
    when amount >= 50 && amount <= 300
    	amount * 0.0095
    when amount >= 50 && amount <= 300
    	amount * 0.0085
    end
  end

end
