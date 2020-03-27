class ConfirmationsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    if !@user.confirmed_at? && @user.update_attribute(:confirmed_at, Time.now)
      DemoCampaign.add(@user, restart: true)
    end
  end
end
