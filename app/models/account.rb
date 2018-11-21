class Account < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :balances, dependent: :destroy
  validates :name, uniqueness: true, presence: true,
                    length: { minimum: 3 }
  validates :category, presence: true

  def self.active
    where active: true
  end
end
