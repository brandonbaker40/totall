class Balance < ApplicationRecord
  belongs_to :account
  validates :value, presence: true
#            , format: { with: /\A\d+(?:\.\d{0,2})?\z/ }
#            , numericality: {greater_than_or_equal_to: -10000000, less_than: 10000000 }
  validates :estimate, inclusion: { in: [ true, false ] }
  validates :note, length: {maximum: 200}
  validates :account_id, presence: true

  def self.estimate?
    where estimate: true
  end

#  def current?
#    account = :account
#    account.current_value
#  end
end
