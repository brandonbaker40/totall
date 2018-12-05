require 'rails_helper'

RSpec.describe Balance, type: :model do
  let(:some_big_balance) { FactoryBot.create(:balance) }

  describe "balance validations" do
    it { is_expected.to validate_presence_of(:value) }
    it { is_expected.to allow_value(true, false).for(:estimate) }
    it { is_expected.to allow_value(nil).for(:note) }
  end

  describe "balance associations" do
    it { is_expected.to belong_to(:account) }
  end

  describe "soft delete" do
    it { is_expected.to act_as_paranoid }
  end
end
