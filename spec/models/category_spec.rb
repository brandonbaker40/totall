require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:mortgage) { FactoryBot.create(:category) }

  describe "category validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:active) }

    # is active intended to be a boolean value?
    # it { is_expected.to allow_value(true, false).for(:active) }
  end

  describe "category associations" do
    it { is_expected.to have_many(:accounts) }
  end

  describe "soft delete" do
    it { is_expected.to act_as_paranoid }
  end

  it "does not destroy accounts when category is deleted" do
    cam_newton = FactoryBot.create(:user, name: "Cam Newton", email: "cam@example.com")
    @account1 = FactoryBot.create(:account, name: "My North Carolina Home", category: mortgage, user: cam_newton)
    @account2 = FactoryBot.create(:account, name: "My ATL Crib", category: mortgage, user: cam_newton)

    expect(mortgage.accounts.size).to eq 2
    mortgage.destroy

    # does not destroy accounts with a soft-deleted category
    expect(mortgage.accounts.size).to eq 2

    # still allows access to category from account after soft deletion
    expect(@account1.category).to eq mortgage
    expect(@account2.category).to eq mortgage
  end
end
