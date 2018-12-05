require 'rails_helper'

RSpec.describe User, type: :model do
  let(:peyton) { FactoryBot.create(:user) }

  describe "soft delete" do
    it { is_expected.to act_as_paranoid }
  end
end
