class AccountsController < ApplicationController
  def index
    @accounts = current_user.accounts.all
  end

  def show
    @account = current_user.accounts.find(params[:id])
  end

  def new
    @account = current_user.accounts.new
  end

  def edit
    @account = current_user.accounts.find(params[:id])
  end

  def create
    @category = Category.find(params[:account][:category])
    @account = current_user.accounts.create(
      name: params[:account][:name],
      category: @category,
      active: params[:account][:active],
      note: params[:account][:note])

    if @account.save
      @account.balances.create(value: 0, estimate: false, note: "New account")
      redirect_to user_accounts_path
    else
      render 'new'
    end
  end

  def update
    @account = current_user.accounts.find(params[:id])

    if @account.update(account_params)
      redirect_to user_accounts_path
    else
      render 'edit'
    end
  end

  def destroy
    @account = current_user.accounts.find(params[:id])
    @account.destroy

    redirect_to user_accounts_path
  end

  private
    def account_params
      params.require(:account).permit(:name, :active, :note)
    end
end
