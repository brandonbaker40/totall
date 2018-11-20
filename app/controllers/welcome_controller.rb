class WelcomeController < ApplicationController
  def index
    accounts = Account.active
    @networth = 0.00

    accounts.each do |account|
      @networth = @networth + account.balances.last.value
    end
  end
end
