class Account < ApplicationRecord
  belongs_to :category
  has_many :balances, dependent: :destroy
  validates :name, uniqueness: true, presence: true,
                    length: { minimum: 3 }
  validates :category, presence: true
end
