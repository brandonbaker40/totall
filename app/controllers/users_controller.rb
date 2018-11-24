class UsersController < ApplicationController
  def index
  end

  def show
    #if current_user_id == params[:id]
    puts current_user_id
      accounts = current_user.accounts.active
      @networth = 0.00

      accounts.each do |account|
        balance = account.balances.order("created_at").last

        if (balance)
          @networth = @networth + balance.value
        end
      end
    #else
    #  redirect_to logout_path
    #end
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
