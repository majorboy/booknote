class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to books_path, notice: "「ユーザー登録を完了しました。"
    else
      render :new
    end
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:name,:email,:password, :password_confirmation)
  end
end
