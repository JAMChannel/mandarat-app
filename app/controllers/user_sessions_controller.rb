class UserSessionsController < ApplicationController
  def create
    @user = login(params[:email], params[:password])
    if @user
      # ActionCableでユーザーを特定するために必要
      # cookies.signed['user.id'] = current_user.id
      redirect_back_or_to mandarats_path, success: 'ログインしました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      @user = User.new
      format.js { render partial: "shared/login",messages: @user.errors.full_messages ,lokestatus: :unprocessable_entity }
    end
  end

  def destroy
    logout
    # cookies.delete('user.id')
    redirect_to root_path, success: 'ログアウトしました'
  end
end
