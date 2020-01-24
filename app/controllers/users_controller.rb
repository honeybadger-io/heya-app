class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      DemoCampaign.add(@user, restart: true)
      EvergreenCampaign.add(@user)

      redirect_to :thanks
    else
      render :new
    end
  end

  protected

  def user_params
    params.require(:user).permit(:email, :name)
  end
end
