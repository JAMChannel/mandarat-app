class OauthsController < ApplicationController
  skip_before_action :require_login, raise: false
  def oauth
    login_at(auth_params[:provider])
  end

  # def callback
  #   # binding.pry
  #   provider = auth_params[:provider]
  #   if (@user = login_from(provider))
  #     edirect_back_or_to mandarats_path, notice: "#{provider.titleize}でログインしました"
  #   else
  #     begin
  #       binding.pry
  #       @user = create_from(provider)
  #       reset_session
  #       auto_login(@user)
  #       redirect_back_or_to mandarats_path, notice: "#{provider.titleize}でログインしました"
  #     rescue StandardError
  #       redirect_to root_path, alert: "#{provider.titleize}でのログインに失敗しました"
  #     end
  #   end
  # end

  def callback
    provider = auth_params[:provider]
    if @user = login_from(provider)
      redirect_to mandarats_path
    else
      begin
        @user = create_from(provider)
        binding.pry
        # NOTE: this is the place to add '@user.activate!' if you are using user_activation submodule

        reset_session # protect from session fixation attack
        auto_login(@user)
        redirect_to mandarats_path
      rescue
        redirect_to root_path
      end
    end
  end

  private

  def auth_params
    params.permit(:code, :provider)
  end
end
