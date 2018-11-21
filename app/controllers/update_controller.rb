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
  end

  def update
  end
end
