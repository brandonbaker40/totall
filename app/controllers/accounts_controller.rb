class AccountsController < ApplicationController
  http_basic_authenticate_with name: "mike", password: "secret", except: [:index, :show]



  def index
    @user = User.find_by(email: "drew@saints.com")
    @accounts = @user.accounts.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = Account.new
  end

  def edit
    @account = Account.find(params[:id])
  end

  def create
    @user = User.find_by(email: "drew@saints.com")
    @category = Category.find(params[:account][:category])
    @account = @user.accounts.create(
      name: params[:account][:name],
      category: @category,
      active: params[:account][:active],
      note: params[:account][:note])

    if @account.save
      redirect_to @account
    else
      render 'new'
    end
  end

  def update
    @user = User.find_by(email: "drew@saints.com")
    @account = @user.accounts.find(params[:id])

    if @account.update(account_params)
      redirect_to @account
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by(email: "drew@saints.com")
    @account = @user.accounts.find(params[:id])
    @account.destroy

    redirect_to accounts_path
  end

  private
    def account_params
      params.require(:account).permit(:name, :active, :note)
    end
end
