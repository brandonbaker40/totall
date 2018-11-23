class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    accounts = @user.accounts.active
    @networth = 0.00

    accounts.each do |account|
      @networth = @networth + account.balances.last.value
    end
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Totall!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
