require 'rails_helper'

RSpec.describe User, type: :model do
  let(:peyton) { FactoryBot.create(:user) }

  describe "user validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
  end

  describe "user associations" do
    it { is_expected.to have_many(:accounts) }
  end

  describe "soft delete" do
    it { is_expected.to act_as_paranoid }
  end

  it "does not destroy accounts when user is deleted" do
    btc = FactoryBot.create(:category, name: "Bitcoin")

    @account1 = FactoryBot.create(:account, name: "Bitcoin", category: btc, user: peyton)
    @account2 = FactoryBot.create(:account, name: "My House In Omaha", user: peyton)

    expect(peyton.accounts.size).to eq 2
    peyton.destroy

    # does not destroy accounts with a soft-deleted user
    expect(peyton.accounts.size).to eq 2

    # still allows access to user from account after soft deletion
    expect(@account1.user).to eq peyton
    expect(@account2.user).to eq peyton
  end
end
