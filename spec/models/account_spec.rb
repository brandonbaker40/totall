require 'rails_helper'

RSpec.describe Account, type: :model do
  let(:checking) { FactoryBot.create(:account) }

  describe "account validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to allow_value(true, false).for(:active) }
    it { is_expected.to allow_value(nil).for(:note) }
  end

  describe "account associations" do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:category) }
    it { is_expected.to have_many(:balances) }
  end

  describe "soft delete" do
    it { is_expected.to act_as_paranoid }
  end
end
