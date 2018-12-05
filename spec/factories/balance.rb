FactoryBot.define do
  factory :balance do
    value { 5000000.00 }
    estimate { false }
    note { nil }
    account
  end
end
