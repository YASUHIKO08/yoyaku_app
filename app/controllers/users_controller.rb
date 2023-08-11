class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.all
  end
  def new
  end
  def edit
  end
  def create
  end
  def show
  end
  def destroy
  end
end
