class Account < ApplicationRecord
  has_many :balances, dependent: :destroy
  validates :name, presence: true,
                    length: { minimum: 3 }
end
