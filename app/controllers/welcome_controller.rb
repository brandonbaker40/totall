class WelcomeController < ApplicationController
  def index
    accounts = Account.all
    @networth = 0.00

    accounts.active.each do |account|
      @networth = @networth + account.balances.last.value
    end
  end
end
