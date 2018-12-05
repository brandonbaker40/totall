require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:mortgage) { FactoryBot.create(:category) }

  describe "soft delete" do
    it { is_expected.to act_as_paranoid }
  end
end
