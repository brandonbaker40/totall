class Category < ApplicationRecord
  has_many :accounts
  validates :name, uniqueness: true, presence: true,
                    length: { minimum: 3 }
end
