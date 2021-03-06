class OauthsController < ApplicationController
  skip_before_action :require_login, raise: false
  def oauth
    login_at(auth_params[:provider])
  end


  def callback
    provider = auth_params[:provider]
    if @user = login_from(provider)
      redirect_to mandarats_path
    else
      begin
        @user = create_from(provider)
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
