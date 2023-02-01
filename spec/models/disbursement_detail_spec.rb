require 'rails_helper'

RSpec.describe DisbursementDetail, type: :model do

  describe 'associations' do
    it { should belong_to(:merchant) }
  end

  describe 'validations' do
    it { should validate_presence_of(:merchant_id) }
  end

end
