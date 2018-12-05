require 'rails_helper'

RSpec.describe Balance, type: :model do
  let(:some_big_balance) { FactoryBot.create(:balance) }

  describe "soft delete" do
    it { is_expected.to act_as_paranoid }
  end
end
