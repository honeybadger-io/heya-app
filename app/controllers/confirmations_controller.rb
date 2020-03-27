class ConfirmationsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    unless @user.confirmed_at?
      @user.update_attribute(:confirmed_at, Time.now)
      @user.opt_in
      DemoCampaign.add(@user, restart: true)
    end
  end
end
