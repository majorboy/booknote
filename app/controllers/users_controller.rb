class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to login_path, notice: "ユーザー登録が完了しました。"
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to edit_user_path(@user), notice: "ユーザー情報を更新しました。"
    else 
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name,:email,:password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
