class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:name,:email,:password, :password_confirmation)
  end
end
