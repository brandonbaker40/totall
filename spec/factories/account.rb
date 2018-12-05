FactoryBot.define do
  factory :account do
    name { "Peyton's House" }
    active { true }
    note { nil }
    category
    user
  end
end
