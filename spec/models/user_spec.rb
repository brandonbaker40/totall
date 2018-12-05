require 'rails_helper'

RSpec.describe User, type: :model do
  let(:peyton) { FactoryBot.create(:user) }

  describe "user validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
  end

  describe "account associations" do
    it { is_expected.to have_many(:accounts) }
  end

  describe "soft delete" do
    it { is_expected.to act_as_paranoid }
  end
end
