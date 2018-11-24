module AccountsHelper
  def current_balance(account)
    number_to_currency(account.balances.order("created_at").last.value)
  end

  def active?
    #account.active?
  end
end
