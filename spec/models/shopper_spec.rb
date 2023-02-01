require 'rails_helper'

RSpec.describe Shopper, type: :model do

  describe 'associations' do
    it { should have_many(:orders) }
    it { should have_many(:merchants).through(:orders) }
  end

  describe 'validations' do
    it { should validate_presence_of(:nif) }
    it { should validate_presence_of(:email) }
  end

end
