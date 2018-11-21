class WelcomeController < ApplicationController
  def index
    @user = User.find_by(email: "drew@saints.com")

    accounts = @user.accounts.active
    @networth = 0.00

    accounts.each do |account|
      @networth = @networth + account.balances.last.value
    end
  end
end
