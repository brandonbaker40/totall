class Category < ApplicationRecord
  has_many :accounts
  validates :name, uniqueness: true, presence: true,
                    length: { minimum: 3, maximum: 25 }
  validates :active, presence: true

  def self.active
    where active: true
  end
end
