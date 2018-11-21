class UpdateController < ApplicationController
  def index
    @accounts = Account.active.sort
    @timestamp = Time.now.getutc
  end

  def show
  end

  def new
  end

  def create
    #@category = Category.find(params[:account][:category])
    #@account = Account.create(account_params)
    #@account = Account.create(
    #  name: params[:account][:name],
    #  category: @category,
    #  active: params[:account][:active],
    #  note: params[:account][:note])

    #if @account.save
    #  redirect_to @account
    #else
      render 'new'
    #end
  end

  def update
  end
end
