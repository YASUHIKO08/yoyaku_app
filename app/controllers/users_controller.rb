class UsersController < ApplicationController
  before_action :authenticate_user!
  def account
    @user = current_user
  end

  def profile
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update!(params.require(:user).permit(:nickname, :introduction, :img_data))
      redirect_to :user_profile
    else
      render "edit"
    end
  end

end
