require 'rails_helper'

RSpec.describe Merchant, type: :model do

  describe 'associations' do
    it { should have_many(:disbursement_details) }
    it { should have_many(:orders) }
    it { should have_many(:shoppers).through(:orders) }
  end

  describe 'validations' do
    it { should validate_presence_of(:cif) }
    it { should validate_presence_of(:email) }
  end

end
