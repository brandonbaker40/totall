module BalancesHelper

  # Returns true if the balance value is an estimate, false otherwise.
  def estimate?
    if balance.estimate == true
      return true
    end
  end
end
