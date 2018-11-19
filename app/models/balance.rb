class Balance < ApplicationRecord
  belongs_to :account
  validates :value, presence: true
end
