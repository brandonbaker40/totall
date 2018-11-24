class BalancesController < ApplicationController
  def index
    @account = current_user.accounts.find(params[:account_id])
  end

  def show
    #@account = current_user.accounts.find(params[:id])
  end

  def new
    @account = current_user.accounts.find(params[:account_id])
    @balance = @account.balances.new
  end

  def edit
    #@account = current_user.accounts.find(params[:id])
  end

  def create
    @account = current_user.accounts.find(params[:account_id])
    @balance = @account.balances.create(balance_params)
    redirect_to user_account_balances_path
  end

  def update
    #@account = current_user.accounts.find(params[:id])

    #if @account.update(account_params)
    #  redirect_to user_accounts_path
    #else
    #  render 'edit'
    #end
  end

  def destroy
    @account = current_user.find(params[:account_id])
    @balance = @account.balances.find(params[:id])
    @balance.destroy
    redirect_to user_account_balance_path
  end

  private
    def balance_params
      params.require(:balance).permit(:value, :estimate, :note)
    end
end
