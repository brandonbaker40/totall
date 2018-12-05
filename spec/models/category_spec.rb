require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:mortgage) { FactoryBot.create(:category) }

  describe "category validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:active) }
  end

  describe "category associations" do
    it { is_expected.to have_many(:accounts) }
  end

  describe "soft delete" do
    it { is_expected.to act_as_paranoid }
  end
end
