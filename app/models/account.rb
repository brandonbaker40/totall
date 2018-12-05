class Account < ApplicationRecord
  acts_as_paranoid

  belongs_to :category, -> { with_deleted }
  belongs_to :user, -> { with_deleted }
  has_many :balances, dependent: :destroy
  validates :name, uniqueness: { scope: :user }, presence: true,
                    length: { minimum: 3, maximum: 25 }
  validates :active, inclusion: { in: [ true, false ] }
  validates :note, length: {maximum: 200}
  validates :category_id, presence: true
  validates :user_id, presence: true

  def self.active?
    where active: true
  end

  def current_value
    balances.order("created_at").last.value
  end
end
