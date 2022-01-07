class UsersController < ApplicationController
  def create
    # binding.pry
    @user = User.new(user_params)
    if @user.save
      auto_login(@user) # Sorceryで用意されているメソッド
      redirect_to mandarats_path, success: 'ユーザーを作成しました'
    else
      flash.now[:danger] = 'ユーザーの作成に失敗しました'
      @user = User.new
      # render root_path
      redirect_to partial: 'template/modallogin', locals: { user: @user }
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username)
  end
end
