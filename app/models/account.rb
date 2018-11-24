class Account < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :balances, dependent: :destroy
  validates :name, uniqueness: { scope: :user }, presence: true,
                    length: { minimum: 3, maximum: 25 }
  validates :active, inclusion: { in: [ true, false ] }
  validates :note, length: {maximum: 200}
  validates :category_id, presence: true
  validates :user_id, presence: true

  def self.active
    where active: true
  end
end
