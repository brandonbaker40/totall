class BalancesController < ApplicationController
  http_basic_authenticate_with name: "mike", password: "secret", only: :destroy

  def create
    @account = Account.find(params[:account_id])
    @balance = @account.balances.create(balance_params)
    redirect_to account_path(@account)
  end

  def destroy
    @account = Account.find(params[:account_id])
    @balance = @account.balances.find(params[:id])
    @balance.destroy
    redirect_to account_path(@account)
  end

  private
    def balance_params
      params.require(:balance).permit(:balance, :estimate, :note)
    end
end
