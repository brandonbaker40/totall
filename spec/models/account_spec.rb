require 'rails_helper'

RSpec.describe Account, type: :model do
  let(:checking) { FactoryBot.create(:account) }

  describe "soft delete" do
    it { is_expected.to act_as_paranoid }
  end
end
