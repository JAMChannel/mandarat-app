class UserSessionsController < ApplicationController
  def create
    @user = login(params[:email], params[:password])
    if @user
      # ActionCableでユーザーを特定するために必要
      # cookies.signed['user.id'] = current_user.id
      redirect_back_or_to mandarats_path, success: 'ログインしました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      # render :new
      redirect_back(fallback_location: root_path)
      # @user = User.new
      # render("homes/index")
      # render location: root_path, locals: { user: @user }
      # render   partial: 'template/modallogin', locals: { user: @user }
    end
  end

  def new
    @user = User.new
  end

  def destroy
    logout
    # cookies.delete('user.id')
    redirect_to root_path, success: 'ログアウトしました'
  end
end
