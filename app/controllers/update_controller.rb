class UpdateController < ApplicationController
  def index
    @accounts = Account.active.sort
    @timestamp = Time.now.getutc
  end
end
